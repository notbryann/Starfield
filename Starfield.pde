//your code here
void setup()
{
	size(600,600);
	background(0);
}
void draw()
{
	//your code here
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
}

class OddballParticle //inherits from Particle
{
	//your code here
}


