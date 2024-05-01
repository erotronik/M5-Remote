#include <Arduino.h>
// #include <M5Unified.h>
#include <M5CoreS3.h>
#include <atomic>
#include <FastLED.h>
#include "m5io.h"

void printf_log(const char *format, ...);

byte buttonhue[] = {0, 64, 128, 192, 0};

byte lastencodertest[numencoders] = {0};
byte encodertest[numencoders] = {0};

void RotaryEncoderChanged(bool clockwise, int id) {
  if (clockwise) {
    encodertest[id]++;
  } else {
    encodertest[id]--;
  }
}

M5Canvas canvas(&CoreS3.Display);
M5Canvas titlecanvas(&CoreS3.Display);

int canvasy;

void setup() {
  auto cfg = M5.config();
  cfg.serial_baudrate = 115200;
  CoreS3.begin(cfg);

  titlecanvas.createSprite(CoreS3.Display.width(), 40);
  titlecanvas.setColorDepth(8);
  titlecanvas.setTextColor(WHITE,BLUE);
  titlecanvas.setTextSize(2);
  titlecanvas.fillSprite(BLUE);
  titlecanvas.println("M5 Remote Test");
  titlecanvas.pushSprite(0,0);
  canvasy = titlecanvas.fontHeight()*2;

  canvas.setColorDepth(1);
  canvas.createSprite(CoreS3.Display.width(), CoreS3.Display.height()-canvasy);
  canvas.setPaletteColor(1, GREEN);
  canvas.setTextSize((float)canvas.width() / 160);
  canvas.setTextScroll(true);
  canvas.pushSprite(0,canvasy);
  
  Wire.begin();

  pinMode(INTA, INPUT_PULLUP);
  pinMode(INTB, INPUT_PULLUP);

  delay(500); // give serial time to catch up
  printf_log("Setup start\n");

  m5io_init();

  printf_log("Setup complete\n");
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

void handlerotaryencoders() {
  for (int i=0; i < numencoders; i++) {
    if (encodertest[i] != lastencodertest[i]) {
      printf_log("Encoder %d %d\n", i, encodertest[i]);
      lastencodertest[i] = encodertest[i];
    }
  }
}

void setleds() {
  for (int i=0; i<4; i++) {
    m5io_showanalogrgb(i+1, CHSV(buttonhue[i],255,255)); // rotary LED
    buttonhue[i]++;
  }
  m5io_showanalogrgb(5, CHSV(255,255,buttonhue[4]/2)); // cherry LED (very bright)
  buttonhue[4]++;
}

void loop() {
  handlebuttonpushes();
  handlerotaryencoders();
  setleds();
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
    canvas.pushSprite(0, canvasy);
}