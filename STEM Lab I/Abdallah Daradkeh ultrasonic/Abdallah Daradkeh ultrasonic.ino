// defines pins numbers
int BUZZER=3;
int trigPin = 10;
int echoPin = 9;
// defines variables
long duration;
int distance;
void setup() {
   Serial.begin(9600);
  pinMode(BUZZER, OUTPUT);
  pinMode(trigPin, OUTPUT); // Sets the trigPin as an Output
  pinMode(echoPin, INPUT); // Sets the echoPin as an Input
  Serial.begin(9600); // Starts the serial communication
}
void loop() {
  if(distance<33 & distance>27)
  {
      digitalWrite(BUZZER,HIGH);
      delay(250);
      digitalWrite(BUZZER,LOW);
      delay(250);
      digitalWrite(BUZZER,HIGH);
      delay(250);
      digitalWrite(BUZZER,LOW);
      delay(250);
  }
   if(distance<23 & distance>17)
  {
      digitalWrite(BUZZER,HIGH);
      delay(166.7);
      digitalWrite(BUZZER,LOW);
      delay(166.7);
      digitalWrite(BUZZER,HIGH);
      delay(166.7);
      digitalWrite(BUZZER,LOW);
      delay(166.7);
       digitalWrite(BUZZER,HIGH);
      delay(166.7);
      digitalWrite(BUZZER,LOW);
      delay(166.7);
  }
   if(distance<13 & distance>7)
  {
      digitalWrite(BUZZER,HIGH);
      delay(50);
      digitalWrite(BUZZER,LOW);
      delay(50);
      digitalWrite(BUZZER,HIGH);
      delay(50);
      digitalWrite(BUZZER,LOW);
      delay(50);
       digitalWrite(BUZZER,HIGH);
      delay(50);
      digitalWrite(BUZZER,LOW);
      delay(50);
      digitalWrite(BUZZER,HIGH);
      delay(50);
      digitalWrite(BUZZER,LOW);
      delay(50);
      digitalWrite(BUZZER,HIGH);
      delay(50);
      digitalWrite(BUZZER,LOW);
      delay(50);
      digitalWrite(BUZZER,HIGH);
      delay(50);
      digitalWrite(BUZZER,LOW);
      delay(50);
      digitalWrite(BUZZER,HIGH);
      delay(50);
      digitalWrite(BUZZER,LOW);
      delay(50);
       digitalWrite(BUZZER,HIGH);
      delay(50);
      digitalWrite(BUZZER,LOW);
      delay(50);
      digitalWrite(BUZZER,HIGH);
      delay(50);
      digitalWrite(BUZZER,LOW);
      delay(50);
      digitalWrite(BUZZER,HIGH);
      delay(50);
      digitalWrite(BUZZER,LOW);
      delay(50);
  }
if(distance<8 & distance>2)
  {
      digitalWrite(BUZZER,HIGH);
      delay(250);
  }
  // Clears the trigPin
  digitalWrite(trigPin, LOW);
  delayMicroseconds(2);
  // Sets the trigPin on HIGH state for 10 micro seconds
  digitalWrite(trigPin, HIGH);
  delayMicroseconds(10);
  digitalWrite(trigPin, LOW);
  // Reads the echoPin, returns the sound wave travel time in microseconds
  duration = pulseIn(echoPin, HIGH);
  // Calculating the distance
  distance = duration * 0.034 / 2;
  // Prints the distance on the Serial Monitor
  Serial.print("Distance: ");
  Serial.println(distance);
}