#ifndef SRC_M5IO_H_
#define SRC_M5IO_H_

#include "Rotary.h"
#include "RotaryEncOverMCP.h"
#include "PCA9685.h"

void printf_log(const char *format, ...);

//void RotaryEncoderChanged(bool clockwise, int id);

// MCP23017 is port expander on I2C x021 and INT on pin 6/7 (different if not CoreS3)
//
// b0 is sw1_rota b1 is sw1_rotb, b2 = sw1_button
// b3 is sw2_rota b4 is sw2_rotb, b5 = sw2_button
// b6 = cherry button
// a0 is sw4_button, a1 is sw4_rotb, a2 = sw4_rota
// a3 is sw3_rota, a4 is sw3_rotb, a5 = sw3_button

Adafruit_MCP23X17 mcp;
constexpr uint8_t INTA = 6;
constexpr uint8_t INTB = 7;
const byte buttonpins[] = {10, 13, 5, 0, 14};
const byte numbuttons = sizeof(buttonpins);

// semaphore for reading of the rotary encoder 
SemaphoreHandle_t rotaryISRSemaphore = nullptr;

RotaryEncOverMCP rotaryEncoders[] = {
  RotaryEncOverMCP(&mcp, 9, 8, &RotaryEncoderChanged, 0),
  RotaryEncOverMCP(&mcp, 11,12, &RotaryEncoderChanged, 1),
  RotaryEncOverMCP(&mcp, 4, 3, &RotaryEncoderChanged, 2),
  RotaryEncOverMCP(&mcp, 1, 2, &RotaryEncoderChanged, 3)
};
const byte numencoders = 4;

// PWM controller is PCA9685PW on 0x42
//
// LED0 is R on SW1, LED1 is G on SW1, LED2 is B on SW1
// LED3 is R on SW2, LED4 is G on SW2, LED5 is B on SW2
// LED11 is R on SW3, LED12 is G on SW3, LED13 is B on SW3
// LED8 is R on SW4, LED9 is G on SW4, LED10 is B on SW4
// LED6 is Cherry LED

PCA9685 PCA(0x42);

// Switch number 1-4 (5 for cherry, single LED), and CRGB structure from FastLED

void m5io_showanalogrgb(byte sw, const CRGB& rgb) { 
  static byte pinstarts[] = {0,3,11,8, 6};
  byte base = pinstarts[sw-1];
  PCA.setPWM(base, rgb.r*16);
  if (sw != 5) {
    PCA.setPWM(base+1, rgb.g*16);  // FastLED is 8 bit, PCA is 12 bit
    PCA.setPWM(base+2, rgb.b*16);
  }
}

volatile bool buttonpressedflags[numbuttons] = {false};
bool lastbuttonstates[numbuttons] = {false};
static unsigned long lastbuttondebounce[numbuttons] = {0};

void handlemcpinterrupt() {
  auto data = mcp.getCapturedInterrupt();

  // check for rotary encoder change
  for (int i=0; i < numencoders; i++) {
     rotaryEncoders[i].feedInput(data);
  }
  // check for button change
  unsigned long now = millis();
  for (byte i=0; i< numbuttons; i++) {
    if (now - lastbuttondebounce[i] > 10) { // debounce time
      byte result = (data >> buttonpins[i]) &1;
      if (buttonpins[i] == 14) result = !result; // cherry is inverted
      if (result != lastbuttonstates[i]) {
        buttonpressedflags[i] = true;
        lastbuttonstates[i] = result;
        lastbuttondebounce[i] = now;
      }
    }
  }
  mcp.clearInterrupts();
}

void rotaryReaderTask(void* pArgs) {
  (void)pArgs;
  while(true) {
    if(xSemaphoreTake(rotaryISRSemaphore, portMAX_DELAY) == pdPASS) {
      handlemcpinterrupt();
    }
  }
}

// Interrupt from MCP means a button or rotary encoder changed

void IRAM_ATTR intactive() {
  BaseType_t xHigherPriorityTaskWoken = pdFALSE;
  xSemaphoreGiveFromISR(rotaryISRSemaphore, &xHigherPriorityTaskWoken);
  if(xHigherPriorityTaskWoken) {
      portYIELD_FROM_ISR ();
  } 
}

void m5io_init(void) {
  //initialize semaphore for reader task
  rotaryISRSemaphore = xSemaphoreCreateBinary();

  if ( ! PCA.begin(PCA9685_MODE1_AUTOINCR | PCA9685_MODE1_ALLCALL, PCA9685_MODE2_INVERT) ) {
    printf_log("No PCA9685 found");
    while (1) {}
  }

  for (byte i = 0; i<32; i++) {
    for (byte led = 0; led<15; led++)
      PCA.setPWM(led, 2048 - (i*64));
    delay(20);
  }  // acts as a delay between setup too

  if ( ! mcp.begin_I2C(0x21) ) {
    printf_log("No MCP23X17 found");
    while (1) {}
  }

  mcp.setupInterrupts(false, true, HIGH);

  for ( byte i = 0; i <=15; ++i ) {
    if (i==0 || i== 5 || i ==10 || i ==13)
      mcp.pinMode(i, INPUT); 
    else
      mcp.pinMode(i, INPUT_PULLUP);
  }
  for (byte pin=0;pin<16;pin++) 
    mcp.setupInterruptPin(pin, CHANGE);

  for (byte i=0; i<numencoders; i++)
    rotaryEncoders[i].init();  // currently a NOP

  xTaskCreate(&rotaryReaderTask, "io reader", 2048, NULL, 20, NULL);
  attachInterrupt(digitalPinToInterrupt(INTA), intactive, FALLING);
  attachInterrupt(digitalPinToInterrupt(INTB), intactive, FALLING);

  Serial.printf("GPIO A 0: %d\n", mcp.readGPIOA()); // no interrupts unless you do a mcp.readGPIOA();
}


#endif