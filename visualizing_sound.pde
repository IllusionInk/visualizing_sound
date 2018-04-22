// Download Processing's Sound Library

import processing.sound.*;
AudioIn in;
Amplitude amp;
// Global variable declaration
int flag = 0;                   //variable for rotation of squares
float H = 200;                  // Initial color variables
//float G = 150;
//float B = 10;


void setup(){
fullScreen();  
//size(1000,1000);
smooth();
//noLoop();
colorMode(HSB,360,100,100);
frameRate(10);
in = new AudioIn(this, 0);
amp = new Amplitude(this);
in.start();
amp.input(in);
}

void draw(){
background(0);
float S = 10000*amp.analyze();//variable for sound amplitude levels
float So = map(S,0,1000,0,100);
float Si = map(S,0,4000,5,40);
println(S);
for(int i = 50; i <= width - 50; i+= 50){
  for(int j = 50; j <= height - 50; j+= 50){
    pushMatrix();              //saves the current setting of cor-ordinate system onto a stack
    translate(i,j);            
    rectMode(CENTER);
     //So -= 1;
     //G -= 1;
     //B += 1;
    fill(150,80,So);
    noStroke();
    //rotate(degrees(So*36));
    flag = flag + 1;           //incrementing flag allows to rotate by steps, 36,72,108 etc.
    rect(0,0,Si,Si);
    popMatrix();              //pushes the current setting of the co-ordinate system out of the stack
    }
}
}