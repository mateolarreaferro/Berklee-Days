//Mateo Larrea Ferro 
//EP-353: Audio Programming in C
//Sending Data from Arduino to Max via serial
//Using HC-SR04 ULTRASONIC Sensor

// 1. VARIABLE DECLARATION

//1.1 CONSTANTS

//Ultrasonic Sensor
#define echoPin 11
#define trigPin 12

//LEDs
#define LED1Pin 2
#define LED2Pin 3
#define LED3Pin 4
#define LED4Pin 5
#define LED5Pin 6

//Pot Octaves
#define potPin A1


//DETERMINE LIMITS (RANGES)
//1.2 Ultrasonic Sensor
int maxRange = 200;
int minRange = 0;
long duration, distance; //Duration is used to calculate distance

//1.3 Pot
int division = 500; 
int potValue = 0;
static int movement = 50;
int neutral = 0;
int potTotal = 0;


// 2. Setup Function
void setup() {
  
  // 2.1 Communication Starts
  Serial.begin(9600);

  // 2.2 Ultrasonic
  pinMode(trigPin, OUTPUT); //Send out info (ultrasonic signal)
  pinMode(echoPin, INPUT); //Recieves it when it bounces from an object


  // 2.3 Light System
  pinMode(LED1Pin, OUTPUT); 
  pinMode(LED2Pin, OUTPUT);
  pinMode(LED3Pin, OUTPUT);
  pinMode(LED4Pin, OUTPUT);
  pinMode(LED5Pin, OUTPUT);


}

// 3. Update Func
void loop() { 

  // 3.1 Ultrasonic Sensor Behavior
  digitalWrite(trigPin, LOW); //Make sure the pin is off
  delayMicroseconds(2);

  digitalWrite(trigPin, HIGH); //Turns on for 10 microseconds
  delayMicroseconds(10);

  digitalWrite(trigPin, LOW); //Turns off again
  duration = pulseIn(echoPin, HIGH); 


  // 3.2 Algorithm -> Distance in cm based on sos (speed of sound)
   distance = duration / 58.2;

  // 3.3 Potentiometer: Modifying Values (Octave)
  potValue = analogRead(potPin); // read the value from the potentiometer

  
  // 4. PASSING DATA FROM ARDUINO TO MAX THROUGH SERIAL

  // 4.1 Light Algorithm Initial Setup
  if (distance >= maxRange || distance <= minRange){
    Serial.println("No object detected");
    //Turns the rest of the LEDs Off
    digitalWrite(LED1Pin, HIGH);
    digitalWrite(LED2Pin, LOW);
    digitalWrite(LED3Pin, LOW);
    digitalWrite(LED4Pin, LOW);
    digitalWrite(LED5Pin, LOW);
    
  } 
  // 4.2 Pot system and passing data
  else {
     if (potValue > division + 150) {
    
    Serial.println(distance + movement);
  }
  
  if (potValue > division - 150 && potValue < division + 150) {

    Serial.println(distance);
  }

  if (potValue < division - 150) {

    Serial.println(distance - movement);
  }
 
    digitalWrite(LED1Pin, LOW);
    
 
  }
  

  // 4.3 Light Algorithm  
  if (distance > maxRange/8 && distance < maxRange/6){
    digitalWrite(LED2Pin, HIGH);
    digitalWrite(LED1Pin, LOW);
    digitalWrite(LED3Pin, LOW);
    digitalWrite(LED4Pin, LOW);
    digitalWrite(LED5Pin, LOW);
  }

  if (distance > maxRange/6 && distance < maxRange/4){
    digitalWrite(LED3Pin, HIGH);
    digitalWrite(LED1Pin, LOW);
    digitalWrite(LED2Pin, LOW);
    digitalWrite(LED4Pin, LOW);
    digitalWrite(LED5Pin, LOW);
  }

  if (distance > maxRange/4 && distance < maxRange/2){
    digitalWrite(LED4Pin, HIGH);
    digitalWrite(LED1Pin, LOW);
    digitalWrite(LED2Pin, LOW);
    digitalWrite(LED3Pin, LOW);
    digitalWrite(LED5Pin, LOW);
    
  }

  if (distance > maxRange/2 && distance < maxRange){
    digitalWrite(LED5Pin, HIGH);
    digitalWrite(LED1Pin, LOW);
    digitalWrite(LED2Pin, LOW);
    digitalWrite(LED3Pin, LOW);
    digitalWrite(LED4Pin, LOW);
  }

  delay(50);



}
