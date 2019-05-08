// sablier.ino
// using MiniCore from MCUdude

#include <Wire.h>
#include "M41T62.h"

#define VIBRATION_SHORT 260
#define VIBRATION_LONG 500

#define PIN_ALARM 3
#define PIN_BUTTON 2
#define PIN_VIBRATOR 5

RTC_M41T62 rtc;
volatile bool int_alarm = false;

volatile bool int_button = false;

uint8_t interval_options[] = {5, 15, 30, 60}; // in minutes

int counter = 0;
int next_alarm = 1;

//extern bool LOW_POWER_STATES[22];

void setup(){

	// Setup RTC

	Wire.begin();
	delay(10);
	rtc.begin();
	delay(10);

	rtc.writeSqwPinMode(Sqw512Hz);
	rtc.checkFlags(); // clear any rtc interrupt flags

	pinMode(PIN_ALARM, INPUT_PULLUP);
	attachInterrupt(digitalPinToInterrupt(PIN_ALARM), interruptRTC, FALLING);

	// following line sets the RTC to the date & time this sketch was compiled
	// TODO : implement Visual Light Communication to set time
	rtc.adjust(DateTime(F(__DATE__), F(__TIME__)));

	rtc.alarmRepeat(2); // set alarm repeat mode
						// 1: once per second
						// 2: once per minute
						// 3: once per hour
						// 4: once per day
						// 5: once per month
						// 6: once per year
	rtc.alarmEnable(true);

	// Setup button
	pinMode(PIN_BUTTON, INPUT_PULLUP);
	attachInterrupt(digitalPinToInterrupt(PIN_BUTTON), interruptButton, FALLING);

	// Setup sleep
	// require the use of MiniCore from MCUdude to work
	
	sleepMode(SLEEP_POWER_DOWN);
	disablePower(POWER_ADC);
	disablePower(POWER_SPI);
	disablePower(POWER_TIMER1);
	disablePower(POWER_TIMER2);
	disablePower(POWER_TIMER3);
	disablePower(POWER_SERIAL0);
	disablePower(POWER_SERIAL1);


	// Setup outputs
	pinMode(13, OUTPUT);
	pinMode(PIN_VIBRATOR, OUTPUT);
	digitalWrite(13, HIGH);
	delay(1000);
	digitalWrite(13, LOW);
}

void interruptRTC(){
	int_alarm = true;
}
void interruptButton(){
	int_button = true;
}

void loop(){
	if(int_alarm){
		if(rtc.checkFlags()){ // the alarm went off
			rtc.alarmEnable(1); // re-enable the alarm
			digitalWrite(PIN_VIBRATOR, HIGH);
			delay(VIBRATION_SHORT);
			digitalWrite(PIN_VIBRATOR, LOW);
		}
		int_alarm = false; // reset the interrupt variable to 0
	}
	if(int_button){
		// one short click :
		// align alarm now
		digitalWrite(13, HIGH);
		delay(VIBRATION_SHORT);
		digitalWrite(13, LOW);
		delay(200);
		if(!digitalRead(PIN_BUTTON)){
			// one long clic, cycle alarm  intervals
			
		}
		
		int_button = false;
	}
	enterSleep();
}

bool LOW_POWER_STATES[22] = {
	LOW,	// 0 RX
	LOW,	// 1 TX
	HIGH,	// 2 INT0
	HIGH,	// 3 INT1
	LOW,	// 4
	LOW,	// 5
	LOW,	// 6
	LOW,	// 7
	LOW,	// 8
	LOW,	// 9
	LOW,	// 10
	LOW,	// 11
	LOW,	// 12
	LOW,	// 13
	LOW,	// 14 A0
	LOW,	// 15 A1
	LOW,	// 16 A2
	LOW,	// 17 A3
	HIGH,	// 18 A4 SDA
	HIGH,	// 19 A5 SCL
	LOW,	// 20 A6 XTAL 1
	LOW		// 21 A7 XTAL 2
};

void enterSleep(){
	// for (int i = 0; i < 22; ++i){
	// 	digitalWrite(i, LOW_POWER_STATES[i]);
	// }
	sleep();
}