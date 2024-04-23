#include <Arduino.h>
// #include <M5Unified.h>
#include <M5AtomS3.h>
#include <Adafruit_MCP23X17.h>

#include "PCA9685.h"

#include <atomic>

Adafruit_MCP23X17 mcp;
PCA9685 PCA(0x42);

constexpr uint8_t INTA = 5;
constexpr uint8_t INTB = 6;

std::atomic_bool inta_triggered;
std::atomic_bool intb_triggered;

void IRAM_ATTR intaactive() {
  inta_triggered = true;
}

void IRAM_ATTR intbactive() {
  intb_triggered = true;
}

 void setup() {
  auto cfg = M5.config();
  cfg.serial_baudrate = 3000000;
  AtomS3.begin(cfg, true);
  AtomS3.dis.setBrightness(0);

  inta_triggered = false;
  intb_triggered = false;

  pinMode(INTA, INPUT_PULLUP);
  pinMode(INTB, INPUT_PULLUP);

  delay(3000); // give serial time to catch up

  Serial.print("Begin\n");
  Wire.begin();

  if ( ! PCA.begin(PCA9685_MODE1_AUTOINCR | PCA9685_MODE1_ALLCALL, PCA9685_MODE2_INVERT) ) {
    Serial.println("No PCA9685 found");
    while (1) {}
  }
  Serial.println("PCA9685 found");

  PCA.setPWM(6, 0);
  delay(500);

  if ( ! mcp.begin_I2C(0x21) ) {
    Serial.println("No MCP23X17 found");
    while (1) {}
  }
  Serial.println(" MCP23X17 found");

  PCA.setPWM(8, 0);

  mcp.setupInterrupts(false, true, HIGH);

  for ( int i = 0; i <=15; ++i )
    mcp.pinMode(i, INPUT_PULLUP);

  mcp.pinMode(2, INPUT);

  mcp.setupInterruptPin(0, CHANGE);
  mcp.setupInterruptPin(1, CHANGE);
  mcp.setupInterruptPin(2, CHANGE);

  attachInterrupt(digitalPinToInterrupt(INTA), intaactive, FALLING);
  attachInterrupt(digitalPinToInterrupt(INTB), intbactive, FALLING);

  Serial.println("Setup complete");
  Serial.printf("GPIO A 0: %d\n", mcp.readGPIOA());
  Serial.printf("GPIO B 0: %d\n", mcp.readGPIOB());
}


unsigned int grayToBinary32(unsigned int num)
{
    num = num ^ (num >> 16);
    num = num ^ (num >> 8);
    num = num ^ (num >> 4);
    num = num ^ (num >> 2);
    num = num ^ (num >> 1);
    return num;
}

void loop() {
  static int last = -1;
  //Serial.printf("hi");
  if ( intb_triggered ) {
    Serial.println("Int b was triggered");
    intb_triggered = false;
    auto data = mcp.getCapturedInterrupt();
    Serial.printf("Data: %d\n", data);
    //auto gray = !(data & 0x3);
    //Serial.printf("Captured interrupt: %d, %d\n", data & 0x7, grayToBinary32(gray));
    //if ( last != -1 ) {
    //  if ( gray > last)
    //    Serial.println("Turning left");
    //  else
    //    Serial.println("Turning right");
    //}
    //last = gray;

    mcp.clearInterrupts();
  }

  delay (10);
  static int pcm = 0;
  pcm += 10;
  if ( pcm >= 4095 )
    pcm = 0;
  PCA.setPWM(4, pcm);

  //Serial.printf("GPIO B 0: %d\n", mcp.readGPIOB());
  /* if ( mcp.digitalRead(2) )
    Serial.println("Pin true");
  else
    Serial.println("Pin false"); */
  //delay(100);
}

