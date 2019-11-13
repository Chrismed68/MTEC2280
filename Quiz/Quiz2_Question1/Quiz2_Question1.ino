int BUTTON = 7;
int mySpeaker = 12;

int preState = 1;

int ButtonCount = 0;

long randNumber;
void setup() 
{
  // put your setup code here, to run once:
  pinMode(BUTTON, INPUT_PULLUP);
  Serial.begin(9600);
  randomSeed(analogRead(0));
  pinMode(mySpeaker,OUTPUT);
}

void loop() 
{
  // put your main code here, to run repeatedly:
  randNumber = random(3000,5000);
  if(digitalRead(BUTTON) == 0 && preState == 1)
  {
    Serial.println("button went down" + randNumber);
   for(int i = 0; i < 100; i++)
    {
    digitalWrite(mySpeaker, HIGH);
    delayMicroseconds(randNumber);
    digitalWrite(mySpeaker, LOW);
    delayMicroseconds(randNumber);
    } 
    preState = 0;
    ButtonCount += 1;
  }
    else if(digitalRead(BUTTON) == 1 && preState == 0)
  {
    Serial.println("not being pressed");
    preState = 1;
  }

}
