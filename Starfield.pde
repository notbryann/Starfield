Particle [] a;
void setup()
{
	size(600,600);
	background(0);
	a = new Particle[500];
	for(int i = 0; i < a.length; i++){
		a[i] = new Particle();
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
	}
}
class Particle
{
	double mx,my,mSpeed,mAngle;
	int mColor;
	Particle(){
		mAngle = Math.random()*(2*Math.PI);
		mSpeed = Math.random()*10;
		mx = 300;
		my = 300;
		mColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
	}
	void move(){
		mx = mx + Math.cos(mAngle)*mSpeed;
		my = my + Math.sin(mAngle)*mSpeed;
	}
	void show(){
		noStroke();
		fill(mColor);
		ellipse((float)mx,(float)my,5,5);
	}
}

class OddballParticle //inherits from Particle
{
	//your code here
}


