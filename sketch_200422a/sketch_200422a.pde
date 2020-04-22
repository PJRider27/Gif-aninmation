ArrayList<PImage> gif;
int n=0;

void setup(){
    size(600,600);
    
    gif = new ArrayList<PImage>();
    for(int i=0;i<81;i++){
      String zero="";
      if(i<10) zero ="0";
      String t="";
      if(i==1 || i %3==1 || i==80){
        t="4";
      }
      else{
        t="3";
      }
      gif.add(loadImage("frame_"+ zero + i + "_delay-0.0"+ t + "s.gif"));
    }
    
}


void draw(){
  PImage frame = gif.get(n);
  image(frame,0,0,width,height);
  n++;
  if(n>80) n=0;
}
