int sensorPin= A0;
int sensorValue= 0;

int myLED = 7;
void setup() 
{
  // put your setup code here, to run once:
  Serial.begin(9600);
  pinMode(myLED,OUTPUT);
}

void loop() 
{
  // put your main code here, to run repeatedly:
  sensorValue = analogRead(sensorPin);
  Serial.println(sensorValue);

  if(sensorValue>1020)
  {
   digitalWrite(myLED,HIGH);
   delay(250);
  }
  
  else if(sensorValue>816)
  {

  }
  else if(sensorValue>612)
  {

  }
  else if(sensorValue>408)
  {

  }
  else if(sensorValue>204)
  {

  }
  else
  {
   digitalWrite(myLED,HIGH);
   delay(2000);
  }
}
