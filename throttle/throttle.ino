#include <Servo.h>

Servo esc;
int throttlePin = 3;
int escPin = 9;

void setup() {
  esc.attach(escPin);
}

void loop() {
  int throttle = analogRead(throttlePin);
  int pwr = map(throttle, 176, 876, 1000, 2000);
  esc.writeMicroseconds(pwr);
}

