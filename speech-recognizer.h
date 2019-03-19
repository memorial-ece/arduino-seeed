#include <Wire.h>
#include <math.h>
#include <Servo.h>
#include "Arduino.h"


#include <SoftwareSerial.h>

//Speech recognizer functions and variables
const int SPEECH_RX_PIN  = 3; //TODO - Change to digital input it's plugged in to
const int SPEECH_TX_PIN  = SPEECH_RX_PIN + 1; //TODO - Change to digital input next to that

void initCommandSpeech();
bool getCommandSpeech(int& command);

































