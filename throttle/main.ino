#include <Servo.h>

Servo esc;
int throttlePin = 3;
int escPin = 8;

void setup() {
  esc.attach(escPin);
}

void loop() {
  int throttle = analogRead(throttlePin);
  int pwr = map(throttle, 263, 803, 0, 179);
  esc.write(pwr);
}

