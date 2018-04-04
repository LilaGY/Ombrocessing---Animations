// --------------------------------------------------
class AnimationScanimation2 extends Animation
{
  // Paramètre
  float amplitude = 50.0;  
  boolean drawMotif1 = true;
  boolean drawMotif2 = true;
  boolean drawMotif3 = true;
  boolean drawMotif4 = true;

  AnimationScanimation2(Scanimation scan)
  {
    super(scan, "___Lila Gueury___", "___Mistral___");
  }

  // Initialisation de l'animation
  void setup()
  {
  }

  // Dessins de l'animation
  void draw(PGraphics pg, int frame, int nbFrames)
  {
    float t = float(frame) / float(nbFrames);

    // Bien noter que l'on utilise pg
    //pg.rectMode(CENTER);
    // pg.rect(pg.width/2, pg.height/2, 200 + t*amplitude, 200);
    pg.rectMode(CENTER);
    // pg.rect(pg.width/2, pg.height/2, 200 + t*amplitude, 200);
    pg.translate(pg.width/2, pg.height/2);
    pg.scale(0.9);

    //    pg.rect(t * 30,0,100 + t * 100,50 + t * 300);
    //pg.rotate( radians(t*360) );
    //pg.ellipse(0,0,200 + t*300,50 + t * 50);
    //pg.rect(-60,-50,300,50);  
    int nb = 10;


    //motif 2 traits/chemins :
    if (drawMotif1)
    {
      pg.strokeWeight(5);
      pg.stroke(0);

      pg.pushMatrix();
      pg.rotate( t * radians(360/nb) );
      pg.pushMatrix();
      for (int i=0; i<nb; i++)
      {
        pg.line(0, 0, 80, 0);
        pg.line(80, 0, 80, 80);
        pg.line(80, 80, 30, 80);
        pg.line(30, 80, 30, 30);
        //pg.line(0,30,55,30);
        pg.rotate(radians(360/nb));
      }
      pg.popMatrix();
      pg.popMatrix();
    }

    if (drawMotif2)
    {

      pg.strokeWeight(3);
      pg.stroke(0);
      nb = 20;


      pg.pushMatrix();
      pg.rotate( t * radians(-360/nb) );
      pg.pushMatrix();
      for (int i=0; i<nb; i++)
      {
        pg.line(0, 0, 120, 0);
        pg.line(120, 0, 120, 120);
        pg.line(120, 120, 60, 120);
        pg.line(60, 120, 60, 50);
        pg.line(40, 50, 75, 50);
        pg.rotate(radians(360/nb));
      }
      pg.popMatrix();
      pg.popMatrix();
    }

    if (drawMotif3)
    {

      pg.strokeWeight(1);
      pg.stroke(0);
      nb = 40;

      pg.pushMatrix();
      pg.rotate( t * radians(360/nb) );
      pg.pushMatrix();
      for (int i=0; i<nb; i++)
      {
        pg.line(0, 0, 160, 0);
        pg.line(160, 0, 160, 160);
        pg.line(160, 160, 0, 160);
        pg.line(60, 120, 60, 50);
        pg.line(40, 50, 75, 50);
        pg.rotate(radians(360/nb));
      }
      pg.popMatrix();
      pg.popMatrix();
    }

    if (drawMotif4)
    {

      pg.strokeWeight(2);
      pg.stroke(0);
      nb = 10;
      pg.pushMatrix();
      pg.rotate( t * radians(360/nb) );
      pg.pushMatrix();

      for (int i=0; i<nb; i++)
      {
        pg.ellipse(0, 0, 30 + t*180, 10 + t * 20);
        pg.rotate(radians(360/nb));
      }

      pg.noFill();
      pg.strokeWeight(2);
      pg.ellipse(0, 0, 200, 200);
    }
    pg.popMatrix();
    pg.popMatrix();
  }








  // Crée les controles
  void createControls(ControlP5 cp5, float y)
  {
    // cp5.addSlider("amplitude").setPosition(5,y).setSize(200,20).plugTo(this, "setAmplitude");
  }

  void setAmplitude(float v)
  {
    this.amplitude = v;
    scanimation.composeFinalFrame();
  }
}