int numberOfBac = 100;
Bacteria[] bacTab = new Bacteria[numberOfBac];

 void setup(){  
   size(700,700);
   for (int i = 0; i <= (numberOfBac - 1); i++){
     bacTab[i] = new Bacteria(350,350, color(255,255,255));
   }
 }  
 void draw(){
   background(0);
   for (int i = 0; i <= (numberOfBac - 1); i++){
     bacTab[i].adjustSize(15,15);
     bacTab[i].move(true,mouseX,mouseY,rand(-50,100)/10,rand(-50,100)/10);
     float dist = dist(bacTab[i].oX,bacTab[i].oY,bacTab[i].pX,bacTab[i].pY);
     bacTab[i].color3 = color((int)(255 * Math.cos(dist * 20 * PI/180)),(int)(150 * Math.cos(dist * 20 * PI/180)),(int)(150 * Math.cos(dist * 5 * PI/180)));
     bacTab[i].show();
   }
 }  
 
 class Bacteria{  
   int pX,pY,color3;
   float sX,sY,oX,oY;
   Bacteria(int x, int y, int c3){
     pX = x;
     pY = y;
     color3 = c3;
   }
   void adjustSize(float srX, float srY){
      sX = srX;
      sY = srY;
   }
   void move(boolean biased,float tX, float tY, float rFx, float rFy){
     oX = pX;
     oY = pY;
     if (biased == false){
       pX += rFx;
       pY += rFy;
     }else{
       if(tX > pX){
         pX += rFx;
       }else{
         pX -= rFx;
       }
       if(tY > pY){
         pY += rFy;
       }else{
         pY -= rFy;
       }
     }
   }
   public void show(){
     noStroke();
     fill(color3);
     triangle(pX + sX/2,pY,pX - sX/2,pY,pX,pY + sY);
   }
 }  
 

public int rand(int min, int max){
  return min + (int)(Math.random()*(1+(max-min)));
}
 

public int rand(int min, int max){
  return min + (int)(Math.random()*(1+(max-min)));
}
