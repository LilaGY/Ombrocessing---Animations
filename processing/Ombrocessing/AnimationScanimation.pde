// --------------------------------------------------
class AnimationScanimation extends Animation
{
  // Paramètre
  float amplitude = 50.0;  
  boolean drawMotif1 = true;
  boolean drawMotif2 = true;
  boolean drawMotif3 = true;
  boolean drawMotif4 = true;

  AnimationScanimation(Scanimation scan)
  {
    super(scan, "___Lila GUEURY___", "___Mistral___");
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
    pg.scale(2.5);

    int nb=0;

    // animation "soleil" :
    if (drawMotif1)
    {
      pg.pushMatrix();
      nb = 10;
      pg.rotate( t * radians(360/nb) );
      pg.pushMatrix();
      for (int i=0; i<nb; i++)
      {
        //pg.ellipse(120, 10, 10, 200);
        //pg.rotate(radians(360/nb));
        pg.ellipse(0, 0, 60 + t*60, 10 + t * 10);
        pg.rotate(radians(360/nb));
      }
      pg.popMatrix();

      pg.popMatrix();
    }


    if (drawMotif2)
    {
      pg.pushMatrix();
      pg.strokeWeight(4);
      pg.stroke(0);
      nb = 10;
      pg.rotate( t * radians(360/nb) );
      pg.pushMatrix();
      for (int i=0; i<nb; i++)
      {
        pg.ellipse(0, 0, 10 + t*40, 10 + t* 10);
        pg.rotate(radians(360/nb));
      }
      pg.popMatrix();
      pg.popMatrix();
    }

    /*nb = 10;
     for (int i=0;i<nb;i++)
     {
     pg.noFill();
     pg.ellipse(100,40,100,100);
     pg.rotate(radians(360/nb));
     }*/

    if (drawMotif3)
    {
      pg.pushMatrix();
      nb = 5;
      pg.rotate( t * radians(360/nb) );
      pg.pushMatrix();
      for (int i=0; i<nb; i++)
      {
        pg.noFill();
        pg.strokeWeight(2.5);
        //rosace :
        pg.ellipse(50, 40, 160 + t*70, 150+t*10);
        pg.rotate(radians(360/nb));
      }
      pg.popMatrix();
      pg.popMatrix();
    }

    if (drawMotif4)
    {
      pg.pushMatrix();

      pg.strokeWeight(1);
      pg.stroke(0);
      nb = 40;
      pg.rotate( t * radians(360/nb) );
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