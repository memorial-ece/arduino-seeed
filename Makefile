ZIP_FILE=	engi1020.zip
SOURCE_FILES= \
	seeed-kit.h \
	lcd-display.h \
	lcd-display.cpp \
	led-bar.h \
	led-bar.cpp \
	rgba-leds.h \
	rgba-leds.cpp \
	servo-motor.h \
	servo-motor.cpp \
	submodules.cpp \
	ultrasonic-distance.h \
	ultrasonic-distance.cpp \
	speech-recognizer.h \
	speech-recognizer.cpp \
	gesture-sensor.h \
	gesture-sensor.cpp \
	barometer.h \
	barometer.cpp \
	Grove_Chainable_RGB_LED/ChainableLED.h \
	Grove_Chainable_RGB_LED/ChainableLED.cpp \
	Grove_LCD_RGB_Backlight/rgb_lcd.cpp \
	Grove_LCD_RGB_Backlight/rgb_lcd.h \
	Grove_LED_Bar/Grove_LED_Bar.cpp \
	Grove_LED_Bar/Grove_LED_Bar.h \
	Grove_Ultrasonic_Ranger/Ultrasonic.h \
	Grove_Ultrasonic_Ranger/Ultrasonic.cpp \
	Grove_BMP280/Seeed_BMP280.h \
	Grove_BMP280/Seeed_BMP280.cpp \
	Grove_PAJ7620/paj7620.h \
	Grove_PAJ7620/paj7620.cpp \
	RTC_DS1307/DS1307.h \
	RTC_DS1307/DS1307.cpp \

all: zip
clean:
	rm -f $(ZIP_FILE)
zip: $(ZIP_FILE)

$(ZIP_FILE): $(SOURCE_FILES) Makefile
	zip $(ZIP_FILE) $(SOURCE_FILES)
