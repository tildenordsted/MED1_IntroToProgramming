Flower myFlower1;  // the first instance of the Flower class
Flower myFlower2;
Flower myFlower3;

void setup() {
  size(800,700);
  
  
  int _r1= 60;
  int _petals=7;
  float _x=width/2;
  float _y=height/2;
  int _pc=#FFA000;
  myFlower1 = new Flower(_r1,_petals,_x,_y,#FFF27C, #FFAE7C,2.3, 2.5);
  myFlower2 = new Flower(50, 20, _x,_y,#FFF27C ,#FF7CE9, 3.3, 5.9);
  myFlower3 = new Flower(_r1,_petals,_x+50,_y,#FFF27C, #C17CFF,10.10,10.10);

//  myFlower2 = new Flower();
//   myFlower3 = new Flower();
}

void draw(){
  background(#499FE8);
  myFlower1.display();
  myFlower2.display();
  myFlower3.display();

}
