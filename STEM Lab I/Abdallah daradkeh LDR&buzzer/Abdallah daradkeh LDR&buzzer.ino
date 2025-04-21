int LDR = A0;
int BUZZER=9;
void setup()
{
  pinMode(LDR, INPUT);
  Serial.begin(9600);
  pinMode(BUZZER, OUTPUT);
}
void loop()
{
  int LDR_Status = analogRead(LDR);
  Serial.print("The Reading of LDR is : ");
  Serial.println(LDR_Status);
  delay(1000);
   if (LDR_Status<300)
  {
    digitalWrite(BUZZER,5);
  }
  else if(LDR_Status<550 & LDR_Status>300)
  {
        digitalWrite(BUZZER,2.5);
  }
  else if(LDR_Status<750 & LDR_Status>700)
  {
        digitalWrite(BUZZER,0);
  }
  else if(LDR_Status>755)
  {
        digitalWrite(BUZZER,1.5);
  }
}