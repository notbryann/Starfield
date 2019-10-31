Particle [] a;
OddballParticle b;
void setup()
{
	size(600,600);
	background(0);
	a = new Particle[500];
	for(int i = 0; i < a.length; i++){
		a[i] = new Particle();
		a[0] = new OddballParticle();
	}
}
void draw()
{
	background(0);
	for(int i = 0; i < a.length; i++){
		a[i].show();
		a[i].move();
	}

}
void mousePressed(){
	for(int i = 0; i < a.length; i++){
		a[i] = new Particle();
		a[0] = new OddballParticle();
	}
}
class Particle
{
	double mx,my,mSpeed,mAngle;
	int mColor;
	Particle(){
		mAngle = Math.random()*(2*Math.PI);
		mSpeed = (Math.random()*5)+1;
		mx = 300;
		my = 300;
		mColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
	}
	void move(){
		mx = mx + Math.cos(mAngle)*mSpeed;
		my = my + Math.sin(mAngle)*mSpeed;
		if(mx>600||mx<0){
			mx=my=300;
		}else if(my>600||my<0){
			mx=my=300;
		}
	}
	void show(){
		noStroke();
		fill(mColor);
		ellipse((float)mx,(float)my,5,5);
	}
}

class OddballParticle extends Particle
{
	OddballParticle(){

	}
	void show(){
		fill(225);
		ellipse((float)mx,(float)my,20,20);
	}
}


