PImage img;

IntList Contador;
ArrayList Colores;


void setup() {
  size(1000,667);
  img = loadImage("LandScape2.jpg");
  loadPixels();
  
  ColorScan();
}

void draw() {
  image(img, 0, 0);

  /*
  println("x: "+ mouseX + "y: "+ mouseY); 
  println("Color: "+ get(mouseX,mouseY));
  */
  
}

void ColorScan(){
  for(int i=0; i<img.pixels.length;i++){
    int RedC=0;
    int BlueC=0;
    int GreenC=0;
    color Pix;
    
      Pix=img.pixels[i];
      int a; 
      a = (Pix >> 24) & 0xFF;
      
      int r;// red(argb)
      r= (Pix >> 16) & 0xFF;  
      
      int g;
      g = (Pix >> 8) & 0xFF; // green(argb)
      
      int b;
      b = Pix & 0xFF;    // blue(argb)
    
      println(a + " " + r + " " + g + " " + b);
      println("pixle: "+img.pixels[i]);
      
      if(r>b && r>g){
      
        RedC++;
      }
      
      if(b>r && b>g){
      
        BlueC++;
      }
      
      if(g>b && g>r){
      
        GreenC++;
      }
     
     if(Pix!=Colores()){
       
       Colores.add(Pix);
     }
     
    
  }
}
  float Colores(){
  for(int i=0;i<img.pixels.length;i++){
    color Ref;
    Ref= pixels[i];
    return Ref;
  }
  }
   /* 
  for(int i=0; i<height;i++){
    for(int j=0; j<width;j++){
    
      color Pix;
      
      Pix=get(i,j);
      
      println(i+ " " + j);
      
      int a; 
      a = (Pix >> 24) & 0xFF;
      
      int r;// red(argb)
      r= (Pix >> 16) & 0xFF;  
      
      int g;
      g = (Pix >> 8) & 0xFF; // green(argb)
      
      int b;
      b = Pix & 0xFF;    // blue(argb)
    
      println(a + " " + r + " " + g + " " + b);
      
      println("color: "+Pix);
      
    }
  }
  */
}

    
