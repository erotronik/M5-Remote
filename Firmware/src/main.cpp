#include <Arduino.h>
// #include <M5Unified.h>
#include <M5CoreS3.h>
#include <Adafruit_MCP23X17.h>
#include "PCA9685.h"
#include <atomic>
#include <FastLED.h>

void printf_log(const char *format, ...);

// MCP23017 is port expander on x021
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

byte buttonhue[] = {0, 64, 128, 192, 0};
volatile bool buttonpressedflags[numbuttons] = {false};
bool lastbuttonstates[numbuttons] = {false};
static unsigned long lastbuttondebounce[numbuttons] = {0};

// PWM controller is PCA9685PW on 0x42
//
// LED0 is R on SW1, LED1 is G on SW1, LED2 is B on SW1
// LED3 is R on SW2, LED4 is G on SW2, LED5 is B on SW2
// LED11 is R on SW3, LED12 is G on SW3, LED13 is B on SW3
// LED8 is R on SW4, LED9 is G on SW4, LED10 is B on SW4
// LED6 is Cherry LED

PCA9685 PCA(0x42);

void showanalogrgb(byte sw, const CRGB& rgb) { 
  static byte pinstarts[] = {0,3,11,8, 6};
  byte base = pinstarts[sw-1];
  PCA.setPWM(base, rgb.r*16);
  if (sw != 5) {
    PCA.setPWM(base+1, rgb.g*16);
    PCA.setPWM(base+2, rgb.b*16);
  }
}

std::atomic_bool int_triggered;

void IRAM_ATTR intactive() {
  int_triggered = true;
}

M5Canvas canvas(&CoreS3.Display);

void setup() {
  auto cfg = M5.config();
  cfg.serial_baudrate = 115200;
  CoreS3.begin(cfg);
  canvas.setColorDepth(1);
  canvas.createSprite(CoreS3.Display.width(), CoreS3.Display.height());
  canvas.setPaletteColor(1, GREEN);
  canvas.setTextSize((float)canvas.width() / 160);
  canvas.setTextScroll(true);
  canvas.pushSprite(0,0);
  
  Wire.begin();
  int_triggered = false;
  pinMode(INTA, INPUT_PULLUP);
  pinMode(INTB, INPUT_PULLUP);

  delay(500); // give serial time to catch up
  printf_log("Setup start\n");

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

  mcp.setupInterrupts(true, true, HIGH);

  for ( byte i = 0; i <=15; ++i ) {
    if (i==0 || i== 5 || i ==10 || i ==13)
      mcp.pinMode(i, INPUT); 
    else
      mcp.pinMode(i, INPUT_PULLUP);
  }
  for (byte pin=0;pin<16;pin++) 
    mcp.setupInterruptPin(pin, CHANGE);
 
  attachInterrupt(digitalPinToInterrupt(INTA), intactive, FALLING);

  Serial.printf("GPIO A 0: %d\n", mcp.readGPIOA()); // no interrupts unless you do a mcp.readGPIOA();

  printf_log("Setup complete\n");
}

void handlemcpinterrupt() {
  auto data = mcp.getCapturedInterrupt();
  printf_log("int %x\n",data);

  // check for button change
  unsigned long now = millis();
  for (byte i=0; i< numbuttons; i++) {
    if (now - lastbuttondebounce[i] > 50) { // debounce time
      byte result = (data & (1 << buttonpins[i])) >> buttonpins[i];
      if (buttonpins[i] == 14) result = !result; // cherry is inverted
      if (result != lastbuttonstates[i]) {
        buttonpressedflags[i] = true;
        lastbuttonstates[i] = result;
        lastbuttondebounce[i] = now;
      }
    }
  }
}

void handlebuttonpushes() {
  for (int i=0; i< numbuttons; i++) {
    if (buttonpressedflags[i]) {
      printf_log("button %d %s\n", i, lastbuttonstates[i]?"push":"release");
      buttonpressedflags[i] = false;
      if (lastbuttonstates[i]) 
        buttonhue[i] = 0;
    }
  }
}

void checkmcpinterrupt() {
  if ( int_triggered ) {
    int_triggered = false;
    handlemcpinterrupt();
    mcp.clearInterrupts();
  }
}

void loop() {
  checkmcpinterrupt();
  handlebuttonpushes();
 
  for (int i=0; i<4; i++) {
    showanalogrgb(i+1, CHSV(buttonhue[i],255,255));  
    buttonhue[i]++;
  }
  showanalogrgb(5, CHSV(255,255,buttonhue[4]/2)); // cherry LED (very bright)
  buttonhue[4]++;
  delay (20);
}

void printf_log(const char *format, ...) {
    static char buf[256];
    va_list args;
    va_start(args, format);
    vsnprintf(buf, 255, format, args);
    va_end(args);
    Serial.print(buf);
    canvas.printf(buf);
    canvas.pushSprite(0, 0);
}