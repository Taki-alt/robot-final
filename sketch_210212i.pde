float baseH=10;
float angle1;
float angle2;
float angle3;
float L1=50;
float L2=30;
float L3=-40;
float Lx=0;
float Ly=0;
float dif=1.0;

void setup(){
  size(1200,800,P3D);
  frameRate(60);
   camera(100, 100, 100, 0, 0, 0, 0, 0, -1);
   angle1=0;
   angle2=0;
   angle3=0;
}

void draw(){
 background(255);
 
float S1=sin(angle1);
float C1=cos(angle1);
float S2=sin(angle2);
float C2=cos(angle2);
float S3=sin(angle3);
float C3=cos(angle3);
float x=Lx-L2*S1*C2+L3*(S1*C2*S3+S1*S2*C3);
float y=L2*C1*C2+L3*(-C1*C2*S3-C1*S2*C3);
float z=L1+L2*S2+L3*(-S2*S3+C2*C3);

float a=-C1*C2*L2+C1*C2*C3*L3+C1*S2*C3*L3;
float b=S1*S2*L2-S1*S2*S3*L3+C1*C2*C3*L3;
float c=S1*C2*C3*L3-S1*S2*S3*L3;
float d=-S1*C2*L2+S1*C2*S3*L3+S1*S2*C3*L3;
float e=-C1*S2*L2+C1*S2*S3*L3-C1*C2*C3*L3;
float f=-C1*C2*C3*L3+C1*S2*S3*L3;
float g=0;
float h=L2*C2-C2*S3*L3-S2*C3*L3;
float i=-S2*C3*L3-C2*S3*L3;

float sum=(a*e*i+b*f*g+c*d*h)-(a*f*h+b*d*i+c*e*g);
 
 //土台部分
 rotateZ(radians(angle1));
 translate(Lx,Ly,5);
 fill(255,165,0);
 box(60,20,baseH);
 
 //右の側面
 translate(25,0,30);
 fill(255,165,0);
 box(10,20,50);
 
 //左側面
 translate(-50,0,0);
 fill(255,165,0);
 box(10,20,50);
 
 //左側面2
 translate(0,0,15);
 rotateX(radians(angle2));
 translate(10,15,0);
 fill(255,165,0);
 box(10,50,20);
 
 //右側面2
 translate(30,0,0);
 fill(255,165,0);
 box(10,50,20);
 
 //手の部分
 translate(-15,15,0);
 rotateX(radians(angle3));
 translate(0,0,-15);
 fill(112,128,144);
 box(20,20,50);
 
 
 
if(keyPressed){
  
  if(key=='a'){
  angle1+=1.0;
  }
      
 if(key=='b'){
 angle2+=dif;
 angle3+=1.0;
 if((angle2>180)||(angle2<0)){
  dif*=-1;
        }
      }
 

      
    if(key == 'B'){
angle1+=10*0.84*(e*i-f*h)/sum;
angle1+=-10*0.84*(c*h-b*i)/sum;

angle1+=10*2.28*(e*i-f*h)/sum;
angle1+=-10*2.28*(c*h-b*i)/sum;

angle1+=10*3.36*(e*i-f*h)/sum;
angle1+=10*-3.36*(c*h-b*i)/sum;

angle1+=10*4.08*(e*i-f*h)/sum;
angle1+=10*-4.08*(c*h-b*i)/sum;

angle1+=10*4.44*(e*i-f*h)/sum;
angle1+=10*-4.44*(c*h-b*i)/sum;

angle1+=10*4.44*(e*i-f*h)/sum;
angle1+=10*-4.44*(c*h-b*i)/sum;

angle1+=10*4.08*(e*i-f*h)/sum;
angle1+=10*-4.08*(c*h-b*i)/sum;

angle1+=10*3.36*(e*i-f*h)/sum;
angle1+=-10*3.36*(c*h-b*i)/sum;

angle1+=10*2.28*(e*i-f*h)/sum;
angle1+=10*-2.28*(c*h-b*i)/sum;

angle1+=10*0.84*(e*i-f*h)/sum;
angle1+=10*-0.84*(c*h-b*i)/sum;

//1/2
angle1+=-10*0.84*(e*i-f*h)/sum;
angle1+=-10*0.84*(c*h-b*i)/sum;

angle1+=-10*2.28*(e*i-f*h)/sum;
angle1+=-10*2.28*(c*h-b*i)/sum;

angle1+=-10*3.36*(e*i-f*h)/sum;
angle1+=10*-3.36*(c*h-b*i)/sum;

angle1+=-10*4.08*(e*i-f*h)/sum;
angle1+=10*-4.08*(c*h-b*i)/sum;

angle1+=-10*4.44*(e*i-f*h)/sum;
angle1+=10*-4.44*(c*h-b*i)/sum;

angle1+=-10*4.44*(e*i-f*h)/sum;
angle1+=10*-4.44*(c*h-b*i)/sum;

angle1+=-10*4.08*(e*i-f*h)/sum;
angle1+=10*-4.08*(c*h-b*i)/sum;

angle1+=-10*3.36*(e*i-f*h)/sum;
angle1+=-10*3.36*(c*h-b*i)/sum;

angle1+=-10*2.28*(e*i-f*h)/sum;
angle1+=10*-2.28*(c*h-b*i)/sum;

angle1+=-10*0.84*(e*i-f*h)/sum;
angle1+=10*-0.84*(c*h-b*i)/sum;

//3/4
angle1+=-10*0.84*(e*i-f*h)/sum;
angle1+=10*0.84*(c*h-b*i)/sum;

angle1+=-10*2.28*(e*i-f*h)/sum;
angle1+=10*2.28*(c*h-b*i)/sum;

angle1+=-10*3.36*(e*i-f*h)/sum;
angle1+=10*3.36*(c*h-b*i)/sum;

angle1+=-10*4.08*(e*i-f*h)/sum;
angle1+=10*4.08*(c*h-b*i)/sum;

angle1+=-10*4.44*(e*i-f*h)/sum;
angle1+=10*4.44*(c*h-b*i)/sum;

angle1+=-10*4.44*(e*i-f*h)/sum;
angle1+=10*4.44*(c*h-b*i)/sum;

angle1+=-10*4.08*(e*i-f*h)/sum;
angle1+=10*4.08*(c*h-b*i)/sum;

angle1+=-10*3.36*(e*i-f*h)/sum;
angle1+=10*3.36*(c*h-b*i)/sum;

angle1+=-10*2.28*(e*i-f*h)/sum;
angle1+=10*2.28*(c*h-b*i)/sum;

angle1+=-10*0.84*(e*i-f*h)/sum;
angle1+=10*0.84*(c*h-b*i)/sum;

    }
    }
}
