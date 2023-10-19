
class Chick
{
   int myX, myY;
   Chick()
   {
     myX = myY = 250;
   }
   void walk()
   {
     myX = myX + (int)(Math.random()*7)-3;
     myY = myY + (int)(Math.random()*7)-3;
   }
   void show()
   {
     fill(255, 255, 158);
     ellipse(myX, myY, 30,30);
     if(mouseX>myX){
      myX+= (int)(Math.random()*5)-1;
     }else{
      myX+= (int)(Math.random()*5)-3;
     }
   }
}
Chick [] bob; 
void setup()
{ 
  size(1000,500);
  bob = new Chick[12];
  for(int i =0; i<bob.length; i++){
    bob[i]= new Chick();
  }
}
void draw()
{
  
  background(0);
  fill(150,150,150);
  rect(500,0,250,1000);
  for(int i = 0; i < bob.length; i++){
  bob[i].show();
  bob[i].walk();
  }

}
