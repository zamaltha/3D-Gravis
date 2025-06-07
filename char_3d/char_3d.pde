PFont font;
String teks = "ZAM";

//deklarasi variabel
float angleX = 0;
float angleY = 0;
float angleZ = 0;

float posX = 0;
float posY = 0;
float zoom = -400;

color[] colors;
boolean lightingOn = true;
boolean textureOn = true;

void setup() {
  size(1000, 800, P3D);                                
  
  font = createFont("Arial Bold", 200);          
  textFont(font);
  textAlign(CENTER, CENTER);
  textMode(SHAPE);                                     
  smooth(100);
  
  colors = new color[] {
    color(#4E7145),
    color(#EB9C35),
    color(#C4501B),
    
  };
}

void draw() {
  background(150);
  
  if (lightingOn) {
    lights();
    ambientLight(150, 150, 50);
    directionalLight(150, 150, 150, -5, -5, -5);
  }
  
  translate(width/2 + posX, height/2 + posY, zoom);
  rotateX(angleX);
  rotateY(angleY);
  rotateZ(angleZ);
  
  for (int i = 0; i < teks.length(); i++) {
    pushMatrix();
    translate((i-1) * 250, 0, 0);
    
    draw3DLetter(teks.charAt(i), colors[i]);
    popMatrix();
  }
}

void draw3DLetter(char c, color baseColor) {
  int depth = 90;
  
  for(int z = 0; z < depth; z++){
    pushMatrix();
    translate(0, 0, z);
    
    if (textureOn) {
      fill(lerpColor(baseColor, color(0), map(z, 0,depth, 1, 0)));
    } else {
      fill(180);
    }
    
    noStroke();
    text(str(c), 0, 0);
    popMatrix();
  }
  
  stroke(0);
  text(str(c), 0, 0);
  
  translate(0, 0, depth);
  text(str(c), 0, 0);
}

void keyPressed() {

  if (key == 'w') angleX -= 0.05;
  if (key == 's') angleX += 0.05;
  if (key == 'a') angleY -= 0.05;
  if (key == 'd') angleY += 0.05;
  if (key == 'q') angleZ -= 0.05;
  if (key == 'e') angleZ += 0.05;

  if (key == 'j') posX -= 20;
  if (key == 'l') posX += 20;
  if (key == 'i') posY -= 20;
  if (key == 'k') posY += 20;

  if (key == 'z') zoom += 20;
  if (key == 'c') zoom -= 20;

  // Toggle fitur
  if (key == 't') textureOn = !textureOn;
  if (key == 'y') lightingOn = !lightingOn;
}
