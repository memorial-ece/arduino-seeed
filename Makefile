ZIP_FILE=	engi1020.zip
SOURCE_FILES= \
	Grove_4Digital_Display/TM1637.cpp \
	Grove_4Digital_Display/TM1637.h \
	Grove_BMP280/Seeed_BMP280.cpp \
	Grove_BMP280/Seeed_BMP280.h \
	Grove_Chainable_RGB_LED/ChainableLED.cpp \
	Grove_Chainable_RGB_LED/ChainableLED.h \
	Grove_LCD_RGB_Backlight/rgb_lcd.cpp \
	Grove_LCD_RGB_Backlight/rgb_lcd.h \
	Grove_LED_Bar/Grove_LED_Bar.cpp \
	Grove_LED_Bar/Grove_LED_Bar.h \
	Grove_PAJ7620/paj7620.cpp \
	Grove_PAJ7620/paj7620.h \
	Grove_Ultrasonic_Ranger/Ultrasonic.cpp \
	Grove_Ultrasonic_Ranger/Ultrasonic.h \
	RTC_DS1307/DS1307.cpp \
	RTC_DS1307/DS1307.h \
	analog-support.cpp \
	analog-support.h \
	barometer.cpp \
	barometer.h \
	digital-support.cpp \
	digital-support.h \
	gesture-sensor.cpp \
	gesture-sensor.h \
	heart-rate.cpp \
	heart-rate.h \
	lcd-display.cpp \
	lcd-display.h \
	led-bar.cpp \
	led-bar.h \
	rgba-leds.cpp \
	rgba-leds.h \
	seeed-kit.h \
	servo-motor.cpp \
	servo-motor.h \
	speech-recognizer.cpp \
	speech-recognizer.h \
	submodules.cpp \
	ultrasonic-distance.cpp \
	ultrasonic-distance.h \

all: zip
clean:
	rm -f $(ZIP_FILE)
zip: $(ZIP_FILE)

$(ZIP_FILE): $(SOURCE_FILES) Makefile
	zip $(ZIP_FILE) $(SOURCE_FILES)
