ZIP_FILE=	engi1020.zip
SOURCE_FILES= \
	seeed-kit.h \
	lcd-display.h \
	lcd-display.cpp \
	led-bar.h \
	led-bar.cpp \
	rgba-leds.h \
	rgba-leds.cpp \
	submodules.cpp \
	Grove_Chainable_RGB_LED/ChainableLED.h \
	Grove_Chainable_RGB_LED/ChainableLED.cpp \
	Grove_LCD_RGB_Backlight/rgb_lcd.cpp \
	Grove_LCD_RGB_Backlight/rgb_lcd.h \
	Grove_LED_Bar/Grove_LED_Bar.cpp \
	Grove_LED_Bar/Grove_LED_Bar.h \

all: zip
clean:
	rm -f $(ZIP_FILE)
zip: $(ZIP_FILE)

$(ZIP_FILE): $(SOURCE_FILES) Makefile
	zip $(ZIP_FILE) $(SOURCE_FILES)
