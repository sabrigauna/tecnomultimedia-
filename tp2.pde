PImage potter, hpot, hp, pluma, lentes, owls, owls2, harrypotter, hermionegranger, severus, ronaldweasley, minerva, buck, sirius, lupin, hagrid, frog, direccion;
PFont potterfont, lumosfont;



int velocidad = 2;
int sube = -900;
int a = 1;
int finalpantalla = 870;
int dondequedatitulo = 100;
int azkaban = 0;
int t1 = 550;
//harry//
int harry = 600;
int jk= 850;
int tercera = 1500;
int t2 = 1450;
int harrycred = 1650;
int harrycred2 = 1700;
//hermione//
int hermione = 1950;
int hercred = 2250;

//ron//
int ron = 2400;
int roncred = 2550;
//profesora//
int   profesora = 2850;
int profcred = 3200;
//albus//
int dumbledore = 3280;
int dumbledorecred = 3500;

int glas = 900; 


//sirius//

int black = 3750;
int sblack = 3850; 

//snape//
int snape = 4180;
int snapecred = 4420;
int snapx = 4181;

//remus//

int remus = 4660;
int remuscred = 4900;



//musica// 
int musica = 5100;
int frogsito = 5101;
int musicred = 5440;
int ranita = 5300;

// DIRECCION//
int director = 5500;
int direcred = 5800;
int dire = 5700;

// reiniciar//

int reini = 5900;
int reini2  = 6000;


void setup() {
  size(860, 480);
  potter = loadImage("prisionero.jpg");
  pluma = loadImage("pluma.png");
  owls = loadImage("owls.png");
  owls2 = loadImage("owls2.png");
  lentes = loadImage("lentes.png");
  hp = loadImage("hp.png");
  hpot = loadImage("hpot.jpg");
  harrypotter = loadImage("harrypotter.jpg");
  hermionegranger = loadImage("hermionegranger.jpg");
  ronaldweasley = loadImage("ronaldweasley.jpg");
  minerva = loadImage("profesora.jpg");
  buck = loadImage("hagrid.jpg");
  sirius =  loadImage("sirius.png");
  lupin =  loadImage("lupin.png");
  severus =  loadImage("snape.png");
  frog =  loadImage("musica.png");
  direccion =  loadImage("dumbledore.png");
  potterfont = loadFont("HarryP-48.vlw");
  lumosfont = loadFont("Lumos-48.vlw");
}
void draw() {

  image(potter, 0, 0, width, height);


  // TITULO//

  if (a<=1) {

    //image(hp, finalpantalla, 250, 300, 100);

    textFont (potterfont);
    textSize(100);
    fill(255);
    text("Harry Potter", finalpantalla, 330);

    finalpantalla = finalpantalla-3;
  }
  if (finalpantalla<150) {
    finalpantalla = 150;
  }

  if (finalpantalla<400) {
    azkaban = azkaban+3;


    fill(255);

    textFont (lumosfont);

    textSize(30);
    text("Y EL PRISIONERO DE AZKABAN", azkaban, 350);
  }
  noFill();
  if (azkaban>200) {
    azkaban = 200;

    //segunda pantalla//

    image(hpot, 0, harry, width, height);
    image(owls, 0, harry, 100, 100);
    //image(owls2, 800, harry, 100, 100);
    textSize(48);
    fill(0);

    text("POR J.K ROWLING", 200, jk);
    image(pluma, random (400, 500), jk, 50, 50);

    harry = harry - velocidad;
    jk = jk-velocidad;
  }

  //TERCERA PANTALLA - HARRY//

  if (tercera>-900) {
    image(harrypotter, 0, tercera, width, height);
    image(owls, 0, t2, 50, 50);        
    image(owls2, 800, t2, 50, 50);
    textSize(35);
    fill(0);
    textSize(40);

    text("HARRY POTTER", 450, harrycred);
    textSize(25);

    text("EL NINO\n \n QUE SOBREVIVIO", 500, harrycred2);
    image(pluma, width/2, jk, 50, 50);


    tercera = tercera -velocidad;
    t2 = t2 -velocidad;
    harrycred = harrycred-velocidad;
    harrycred2 = harrycred2 -velocidad;
  }

  //CUARTA PANTALLA - HERMIONE //



  if (hermione>-900) {
    image(hermionegranger, 0, hermione, width, height);
    image(owls, 0, hermione, 50, 50);        
    image(owls2, 800, hermione, 50, 50);
    textSize(35);
    text("HERMIONE \n \nGRANGER", 250, hercred);

    hermione = hermione -velocidad;
    hercred = hercred -velocidad;
  }
  // PANTALLA CINCO - RON WEASLEY // 

  if (ron>sube) {
    image(ronaldweasley, 0, ron, width, height);
    image(owls, 0, ron, 50, 50);        
    image(owls2, 800, ron, 50, 50);
    textSize(35);
    text("RON \n \nWEASLEY", 500, roncred);
    ron = ron  -velocidad;
    roncred = roncred -velocidad;
  }

  // PANTALLA SEIS - PROFESORA MCGONAGALL //
  if (profesora>sube) {
    image(minerva, 0, profesora, width, height);
    image(owls, 0, profesora, 50, 50);        
    image(owls2, 800, profesora, 50, 50);
    textSize(40);
    text("MINERVA \n \nMCGONAGALL", 300, profcred);
    profesora = profesora  -velocidad;
    profcred = profcred -velocidad;
  }   


  // PANTALLA SIETE - ALBUS DUMBLEDORE //

  if (dumbledore>sube) {
    image(buck, 0, dumbledore, width, height);
    image(owls, 0, dumbledore, 50, 50)     ;     
    image(owls2, 800, dumbledore, 50, 50);
    textSize(40);
    text("BUCKBEAK\n \n  & HAGRID", 500, dumbledorecred);
    dumbledore = dumbledore  -velocidad;
    dumbledorecred = dumbledorecred -velocidad;
  }   

  //PANTALLA OCHO - SIRIUS // 

  if (black>sube) {
    image(hpot, 0, black, width, height);
    image(sirius, 400, sblack, 200, 150);
    image(owls, 0, black, 50, 50)     ;     
    image(owls2, 800, black, 50, 50);
    textSize(45);
    text("SIRIUS \n \nBLACK", 600, sblack);
    black = black  -velocidad;
    sblack = sblack -velocidad;
  }

  // PANTALLA NUEVE - REMUS LUPIN // 

  if (remus>sube) {
    image(hpot, 0, remus, width, height);
    image(lupin, 150, remuscred, 200, 200);
    image(owls, 0, remus, 50, 50)     ;     
    image(owls2, 800, remus, 50, 50);
    textSize(45);
    text("REMUS \n \nLUPIN", 500, remuscred);
    remus = remus  -velocidad;
    remuscred = remuscred -velocidad;
  }



  // PANTALLA ANTERIOR SNAPE  //

  if (snape>sube || snapx>sube) {
    image(hpot, 0, snape, width, height);
    image(severus, 150, snapecred, 200, 200);
    image(owls, 0, snape, 50, 50)     ;     
    image(owls2, 800, snape, 50, 50);
    textSize(45);
    text("SEVERUS \n \nSNAPE", 500, snapecred);
    snape = snape  -velocidad;
    snapecred = snapecred -velocidad;
  }

  // PANTALLA ONCE // MUSICA}


  if (musica>sube || frogsito>sube) {
    image(hpot, 0, musica, width, height);
    image(frog, 550, ranita, 200, 200);
    image(owls, 0, musica, 50, 50)     ;     
    image(owls2, 800, musica, 50, 50);
    textSize(45);
    fill(0);
    text("MUSICA POR: \n \nTHE FROG CHOIR", 100, musicred);
    musica = musica  -velocidad;
    musicred = musicred -velocidad;
    ranita = ranita -velocidad;
  }

  // PANTALLA DOCE - DIRECCION //
  if (director>sube) {
    image(hpot, 0, director, width, height);
    image(direccion, 550, dire, 200, 200);
    image(owls, 0, director, 50, 50)     ;     
    image(owls2, 800, director, 50, 50);
    textSize(45);
    text("DIRIGIDO POR:\n \nALBUS DUMBLEDORE", 100, direcred);
    director = director  -velocidad;
    direcred = direcred -velocidad;
    dire = dire -velocidad;
      }

 

  //BOTON DE REINICIO// MOUSE X + CLICK
  if (mouseX>10 && mousePressed) {


    harry = 600;
    jk= 850;
    tercera = 1500;
    t2 = 1450;
    harrycred = 1650;
    harrycred2 = 1700;

    hermione = 1950;

    hercred = 2250;

    ron = 2400;

    roncred = 2550;

    profesora = 2850;

    profcred = 3200;


    dumbledore = 3300;

    dumbledorecred = 3500;


    glas = 900; 


    black = 3700;
    sblack = 3850; 


    snape = 4180;
    snapecred = 4420;
    snapx = 4181;



    remus = 4660;

    remuscred = 4900;

    musica = 5100;
    frogsito = 5101;
    musicred = 5440;
    ranita = 5300;


    director = 5500;
    direcred = 5800;
    dire = 5700;

    sube = -900;
    a = 1;
    finalpantalla = 870;
    dondequedatitulo = 100;
    azkaban = 0;
    t1 = 550;
  }
}   
