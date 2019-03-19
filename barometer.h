#include <Wire.h>
#include <math.h>
#include <Servo.h>
#include <SoftwareSerial.h>
#include "Arduino.h"

#include "Seeed_BMP280.h"


//Barometer (BMP280) functions and variables
void bmpInit();
float bmpGetTemperature();
unsigned int bmpGetPressure();
float bmpCalcAltitude(float pressure);

