#include <M5Core2.h>
#include <ESP32Encoder.h>
#include <esp_now.h>
#include <WiFi.h>
#include <PatternMath.h>

///////////////////////////////////////////
////
////  To Debug or not to Debug
////
///////////////////////////////////////////

// Uncomment the following line if you wish to print DEBUG info
#define DEBUG 

#ifdef DEBUG
#define LogDebug(...) Serial.println(__VA_ARGS__)
#define LogDebugFormatted(...) Serial.printf(__VA_ARGS__)
#else
#define LogDebug(...) ((void)0)
#define LogDebugFormatted(...) ((void)0)
#endif

#define ENC_1_CLK 26
#define ENC_1_DT 25
#define ENC_2_CLK 13
#define ENC_2_DT 14
#define ENC_3_CLK 27
#define ENC_3_DT 19
#define ENC_4_CLK 32
#define ENC_4_DT 33
#define Button 35

#define Encoder_MAP 42
#define TextColor  TFT_PURPLE
#define BgColor    TFT_WHITE
#define FrontColor TFT_PURPLE

int displaywidth;
int displayheight;
int progheight = 30;
int distheight = 10;
int S1Pos;
int S2Pos;
int S3Pos;
int S4Pos;
bool rstate = false;
int pattern = 0;

long enc1 = 0;
long enc2 = 0;
long enc3 = 0;
long enc4 = 0;

float speed = 0.0;
float depth = 0.0;
float stroke = 0.0;
float sensation = 0.0;
float maxdepthinmm = 0.0;
float speedlimit = 0.0;

ESP32Encoder encoder1;
ESP32Encoder encoder2;
ESP32Encoder encoder3;
ESP32Encoder encoder4;

uint8_t broadcastAddress[] = {0x34, 0x86, 0x5d, 0x57, 0xf5, 0x84};

// Variable to store if sending data was successful
String success;

float out_esp_speed;
float out_esp_depth;
float out_esp_stroke;
float out_esp_sensation;
float out_esp_pattern;
bool out_esp_rstate;
bool out_esp_connected;

float incoming_esp_speed;
float incoming_esp_depth;
float incoming_esp_stroke;
float incoming_esp_sensation;
float incoming_esp_pattern;
bool incoming_esp_rstate;
bool incoming_esp_connected;

typedef struct struct_message {
  float esp_speed;
  float esp_depth;
  float esp_stroke;
  float esp_sensation;
  float esp_pattern;
  bool esp_rstate;
  bool esp_connected;
} struct_message;

bool esp_connect = false;

struct_message outgoingcontrol;
struct_message incomingcontrol;

esp_now_peer_info_t peerInfo;

TaskHandle_t eRemote_t  = nullptr;  // Esp Now Remote
void espNowRemoteTask(void *pvParameters); // Handels the EspNow Remote
void menueUpdate(int select); //Handels update of Menue
void drawdisplay(); //Handels Display Drawing

void powerBar(int x, int y, int w, int h, uint8_t val) {
  M5.lcd.drawRect(x, y, w, h, FrontColor);
  M5.lcd.fillRect(x + 1, y + 1, w * (((float)100) / 100.0), h - 1, BgColor);
  M5.lcd.fillRect(x + 1, y + 1, w * (((float)val) / 100.0), h - 1, FrontColor);
}

void OnDataSent(const uint8_t *mac_addr, esp_now_send_status_t status) {
}

void OnDataRecv(const uint8_t * mac, const uint8_t *incomingData, int len) {
  memcpy(&incomingcontrol, incomingData, sizeof(incomingcontrol));
  Serial.print("Bytes received: ");
  Serial.println(len);

  if(esp_connect == false && incomingcontrol.esp_connected == true){  
    speedlimit = incomingcontrol.esp_speed;
    maxdepthinmm = incomingcontrol.esp_depth;
    sensation = 0.0;
    pattern = incomingcontrol.esp_pattern;
    outgoingcontrol.esp_connected = false;
    esp_err_t result = esp_now_send(broadcastAddress, (uint8_t *) &outgoingcontrol, sizeof(outgoingcontrol));
    if (result == ESP_OK) {
      esp_connect = true;
      outgoingcontrol.esp_connected = true;
      M5.Lcd.setCursor(5,20);
      M5.Lcd.setFont(&FreeSansBold9pt7b);
      M5.Lcd.print("CON");
    }
  } 
}

void setup(){
  M5.begin(true, false, true, true); //Init M5Core2.
  M5.Axp.SetLcdVoltage(3000);
  LogDebug("\n Starting");      // Start LogDebug 
  

  xTaskCreatePinnedToCore(espNowRemoteTask,      /* Task function. */
                            "espNowRemoteTask",  /* name of task. */
                            4096,               /* Stack size of task */
                            NULL,               /* parameter of the task */
                            5,                  /* priority of the task */
                            &eRemote_t,         /* Task handle to keep track of created task */
                            0);                 /* pin task to core 0 */
  delay(100);

  encoder1.attachHalfQuad(ENC_1_CLK, ENC_1_DT);
  encoder2.attachHalfQuad(ENC_2_CLK, ENC_2_DT);
  encoder3.attachHalfQuad(ENC_3_CLK, ENC_3_DT);
  encoder4.attachHalfQuad(ENC_4_CLK, ENC_4_DT);
  pinMode(Button, INPUT_PULLDOWN);
  displaywidth = M5.Lcd.width();
  displayheight = M5.Lcd.height();

  S4Pos = displayheight - 40 - progheight;
  S3Pos = S4Pos - progheight - distheight;
  S2Pos = S3Pos - progheight - distheight;
  S1Pos = S2Pos - progheight - distheight;

  drawdisplay();
  menueUpdate(2);
  powerBar(displaywidth*0.5+10,S1Pos,displaywidth*0.5-20,progheight, 0);
  powerBar(displaywidth*0.5+10,S2Pos,displaywidth*0.5-20,progheight, 0);
  powerBar(displaywidth*0.5+10,S3Pos,displaywidth*0.5-20,progheight, 0);
  powerBar(displaywidth*0.5+10,S4Pos,displaywidth*0.5-20,progheight, 50);
  
  outgoingcontrol.esp_connected = false;
  esp_err_t result = esp_now_send(broadcastAddress, (uint8_t *) &outgoingcontrol, sizeof(outgoingcontrol));
  if (result == ESP_OK) {
  }
  encoder4.setCount(Encoder_MAP*0.5);
}

void loop()
{
  M5.update();
  M5.Lcd.setTextColor(TextColor);

  if(esp_connect == true){

  if(encoder1.getCount() != enc1){
    enc1 = encoder1.getCount();
    speed = fscale(0, Encoder_MAP, 0.5, speedlimit, constrain(encoder1.getCount(),0,Encoder_MAP), -3);
    outgoingcontrol.esp_speed = speed;
    M5.Lcd.setFreeFont(&FreeSansBold9pt7b);
    M5.Lcd.fillRect(85,S1Pos,200,30,TFT_WHITE);
    int mm = speed;
    M5.Lcd.setCursor(95,S1Pos+progheight-5);
    M5.Lcd.print(mm);
    M5.Lcd.print(" F/m");
    powerBar(displaywidth*0.5+10,S1Pos,displaywidth*0.5-20,progheight, map(constrain(encoder1.getCount(),0,Encoder_MAP),0,Encoder_MAP,0,100));
    esp_err_t result = esp_now_send(broadcastAddress, (uint8_t *) &outgoingcontrol, sizeof(outgoingcontrol));
      if (result == ESP_OK) {
      Serial.println("Sent with success");
      }
  }

  if(encoder2.getCount() != enc2){
    enc2 = encoder2.getCount();
    depth = map(constrain(enc2,0,Encoder_MAP),0,Encoder_MAP,0,maxdepthinmm);
    outgoingcontrol.esp_depth = depth;
    M5.Lcd.setFreeFont(&FreeSansBold9pt7b);
    M5.Lcd.fillRect(85,S2Pos,200,30,TFT_WHITE);
    int mm = depth;
    M5.Lcd.setCursor(95,S2Pos+progheight-5);
    M5.Lcd.print(mm);
    M5.Lcd.print(" mm");
    powerBar(displaywidth*0.5+10,S2Pos,displaywidth*0.5-20,progheight, map(depth, 0, maxdepthinmm, 0, 100));
    esp_err_t result = esp_now_send(broadcastAddress, (uint8_t *) &outgoingcontrol, sizeof(outgoingcontrol));
      if (result == ESP_OK) {
      Serial.println("Sent with success");
      }
  }

  if(encoder3.getCount() != enc3){
    enc3 = encoder3.getCount();
    stroke = map(constrain(encoder3.getCount(),0,Encoder_MAP),0,Encoder_MAP,0,maxdepthinmm);
    outgoingcontrol.esp_stroke = stroke;
    M5.Lcd.setFreeFont(&FreeSansBold9pt7b);
    M5.Lcd.fillRect(85,S3Pos,200,30,TFT_WHITE);
    int mm = stroke;
    M5.Lcd.setCursor(95,S3Pos+progheight-5);
    M5.Lcd.print(mm);
    M5.Lcd.print(" mm");
    powerBar(displaywidth*0.5+10,S3Pos,displaywidth*0.5-20,progheight, map(stroke, 0, maxdepthinmm, 0, 100));

    esp_err_t result = esp_now_send(broadcastAddress, (uint8_t *) &outgoingcontrol, sizeof(outgoingcontrol));
      if (result == ESP_OK) {
      Serial.println("Sent with success");
      }
      else {
      Serial.println("Error sending the data");
      }
  }

  if(encoder4.getCount() != enc4){
    enc4 = encoder4.getCount();
    sensation = map(constrain(encoder4.getCount(),0,Encoder_MAP),0,Encoder_MAP,-100,100);
    powerBar(displaywidth*0.5+10,S4Pos,displaywidth*0.5-20,progheight, map(sensation,-100,100,0,100));
    outgoingcontrol.esp_sensation = sensation;
    esp_err_t result = esp_now_send(broadcastAddress, (uint8_t *) &outgoingcontrol, sizeof(outgoingcontrol));
      if (result == ESP_OK) {
      Serial.println("Sent with success");
      }
  }

  if(M5.BtnA.wasPressed()) {
     rstate = true;
     outgoingcontrol.esp_rstate = rstate;
     esp_err_t result = esp_now_send(broadcastAddress, (uint8_t *) &outgoingcontrol, sizeof(outgoingcontrol));
      if (result == ESP_OK) {
        menueUpdate(1);
        M5.Axp.SetLDOEnable(3,true);
        delay(100);
        M5.Axp.SetLDOEnable(3,false);
      } 
  }

  
  if(M5.BtnC.wasPressed()) {
    rstate = false;
    outgoingcontrol.esp_rstate = rstate;
    esp_err_t result = esp_now_send(broadcastAddress, (uint8_t *) &outgoingcontrol, sizeof(outgoingcontrol));
      if (result == ESP_OK) {
        menueUpdate(2);
        M5.Axp.SetLDOEnable(3,true);
        delay(200);
        M5.Axp.SetLDOEnable(3,false);
      }
  }
 }

   if(M5.BtnB.wasPressed()) {
    LogDebug("buttona");
  }

  delay(100);
}

void espNowRemoteTask(void *pvParameters)
{
    WiFi.mode(WIFI_STA);
    LogDebug(WiFi.macAddress());

    // Init ESP-NOW
    if (esp_now_init() != ESP_OK) {
    Serial.println("Error initializing ESP-NOW");
    return;
    }
    // Once ESPNow is successfully Init, we will register for Send CB to
    // get the status of Trasnmitted packet
    esp_now_register_send_cb(OnDataSent);

    // Register peer
    memcpy(peerInfo.peer_addr, broadcastAddress, 6);
    peerInfo.channel = 0;  
    peerInfo.encrypt = false;
  
      // Add peer        
    if (esp_now_add_peer(&peerInfo) != ESP_OK){
    Serial.println("Failed to add peer");
    return;
    }
    // Register for a callback function that will be called when data is received
    esp_now_register_recv_cb(OnDataRecv);

    for(;;)
    {

      outgoingcontrol.esp_rstate = rstate;
      outgoingcontrol.esp_speed = speed;
      outgoingcontrol.esp_depth = depth;
      outgoingcontrol.esp_stroke = stroke;
      outgoingcontrol.esp_sensation = sensation;
      outgoingcontrol.esp_pattern = pattern;

      vTaskDelay(500);
    }
}

void menueUpdate(int select){
  M5.Lcd.setCursor(0,displayheight-5);
  M5.Lcd.setTextPadding(displaywidth);
  switch(select){
    case 1:
    M5.Lcd.setCursor(displaywidth-80,displayheight-5);
    M5.Lcd.setTextPadding(displaywidth);
    M5.Lcd.setFont(&FreeSansBold12pt7b);
    M5.Lcd.setCursor(20,displayheight-5);
    M5.Lcd.setTextColor(TFT_BLACK);
    M5.Lcd.print("Start");
    M5.Lcd.setCursor(displaywidth*0.5-35,displayheight-5);
    M5.Lcd.setTextColor(FrontColor);
    M5.Lcd.print("Menu");
    M5.Lcd.setTextColor(FrontColor);
    M5.Lcd.setCursor(displaywidth-80,displayheight-5);
    M5.Lcd.print("Stop");
    break;
    case 2:
    M5.Lcd.setCursor(displaywidth-80,displayheight-5);
    M5.Lcd.setTextPadding(displaywidth);
    M5.Lcd.setFont(&FreeSansBold12pt7b);
    M5.Lcd.setCursor(20,displayheight-5);
    M5.Lcd.setTextColor(FrontColor);
    M5.Lcd.print("Start");
    M5.Lcd.setCursor(displaywidth*0.5-35,displayheight-5);
    M5.Lcd.setTextColor(FrontColor);
    M5.Lcd.print("Menu");
    M5.Lcd.setTextColor(TFT_BLACK);
    M5.Lcd.setCursor(displaywidth-80,displayheight-5);
    M5.Lcd.print("Stop");
    break;
  }

}

void drawdisplay(){
  M5.lcd.clearDisplay();
  M5.Lcd.fillScreen(BgColor);
  M5.Lcd.setTextColor(TextColor);
  M5.Lcd.setTextSize(1);
  M5.Lcd.setCursor(80,20);
  M5.Lcd.setFont(&FreeSansBold12pt7b);
  M5.Lcd.print("OSSM Remote");
  M5.Lcd.setTextColor(TextColor);
  M5.Lcd.fillRect(0,S1Pos-distheight,displaywidth,distheight-4, FrontColor);
  M5.Lcd.setCursor(5,S1Pos+progheight-5);
  M5.Lcd.print("Speed:");
  M5.Lcd.fillRect(0,S1Pos+progheight+2,displaywidth,distheight-4, FrontColor);
  M5.Lcd.setCursor(5,S2Pos+progheight-5);
  M5.Lcd.print("Depth:");
  int mm = depth;
  M5.Lcd.setCursor(95,S2Pos+progheight-5);
  M5.Lcd.print(mm);
  M5.Lcd.print(" mm");
  M5.Lcd.fillRect(0,S2Pos+progheight+2,displaywidth,distheight-4, FrontColor);
  M5.Lcd.setCursor(5,S3Pos+progheight-5);
  M5.Lcd.print("Stroke:");
  mm = stroke;
  M5.Lcd.setCursor(95,S3Pos+progheight-5);
  M5.Lcd.print(mm);
  M5.Lcd.print(" mm");
  M5.Lcd.fillRect(0,S3Pos+progheight+2,displaywidth,distheight-4, FrontColor);
  M5.Lcd.setCursor(5,S4Pos+progheight-5);
  M5.Lcd.print("Sensation:");
  M5.Lcd.fillRect(0,S4Pos+progheight+2,displaywidth,distheight-4, FrontColor);
}