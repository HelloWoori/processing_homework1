//20121202 안우리
import processing.pdf.*;
beginRecord(PDF, "homework.pdf");

float r = 0;
size(900, 900);
background(0);
smooth();

//삼각형
for(int n=0; n<900; n+=1){
  pushMatrix();
    translate(width/2, height/2);
    rotate(r);
    noStroke();
    fill(random(255), 0, random(10, 100), 30);
    triangle(169, 184, 272, 3, 376, 183);
    r = r + 0.9;
  popMatrix();
}

//뒤덮는 선
for(int i=0; i<900; i+=50){
  for(int j=900; j>0; j-=30){
    stroke(0);
    strokeWeight(1);
    noFill();
    line(i, 0, 0, j);
  }
}  
endRecord();