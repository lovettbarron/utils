#define LED 13
#define FADESTEP 1
int bright;

void setup() {
  Serial.begin(9600);
  pinMode(LED,OUTPUT);
}

void loop() {
  if(Serial.available() > 0) {
    char incoming = Serial.read();
    bright=100;
  }
  
  if(bright > 0) {
    bright-= FADESTEP;
  }
  analogWrite(LED,bright); 
  delay(5);     
}
