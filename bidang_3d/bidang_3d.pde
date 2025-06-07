// deklarasi variabel
float angleX = 0;
float angleY = 0;
float angleZ = 0;

void setup() {
  size(800, 600, P3D);                  //size window dan mode 3D
}

void draw() {
  background(240);                      //bersihkan layar
  lights();                             //lighting default
  translate(width/2, height/2, 0);      //posisikan center
  
  rotateX(angleX);                      //merotasi x
  rotateY(angleY);                      //merotasi y
  rotateZ(angleZ);                      //merotasi z
  
  //kubus
  pushMatrix();                         //simpan matrix
  translate(-150, 0, 0);                //posisi matrix ini (bola)
  fill(255, 0, 0);                      //warna r,g,b
  box(100);                             //kubus 3d dengan ukuran 150
  popMatrix();                          //memunculkan matrix
    
  //bola
  pushMatrix();                         //simpan matrix
  translate(0, 0, 0);                //posisi matrix ini (bola)
  fill(255, 255, 0);                      //warna r,g,b
  sphere(60);                           //bola 3d dengan ukuran 50
  popMatrix();                          //memunculkan matrix
    
  //kubus
  pushMatrix();                         //simpan matrix
  translate(150, 0, 0);                 //posisi matrix ini (kubus)
  fill(0, 255, 0);                     //warna r,g,b
  box(100);                             //kubus 3d dengan ukuran 150
  popMatrix();                          //memunculkan matrix

 }

void keyPressed() {                     //perkondisian jika input keyboard dimasukkan / ditekan
  if (key == 'w') angleX -= 0.5;
  if (key == 's') angleX += 0.5;
  if (key == 'a') angleY -= 0.5;
  if (key == 'd') angleY += 0.5;
  if (key == 'z') angleZ -= 0.5;
  if (key == 'x') angleZ += 0.5;
  
  if (key == 'W') angleX -= 0.5;
  if (key == 'S') angleX += 0.5;
  if (key == 'A') angleY -= 0.5;
  if (key == 'D') angleY += 0.5;
  if (key == 'Z') angleZ -= 0.5;
  if (key == 'X') angleZ += 0.5;
}
