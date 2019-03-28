// sablier.ino

void setup(){
	pinMode(10, OUTPUT);
}

void loop(){
	if(millis()%5000 == 0){
		analogWrite(10, 255);
		delay(120);
		digitalWrite(10, LOW);
	}
}