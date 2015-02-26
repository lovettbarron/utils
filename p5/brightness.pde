import processing.video.*;


Capture capture;
PImage prevImage;
PImage curImage;
PImage map;
PImage brightnessMap;
int count;

void setup() {
	size( 1024,800);
	curImage = createImage(width, height, RGB);
	prevImage = createImage(width, height, RGB);
	map = createImage(width, height, RGB);
	capture = new Capture(this, width, height, 1);
}

void draw() {
	curImage = capture;
	background( curImage );
	prevImage = checkBrightness(curImage, prevImage, map);
//	image( prevImage, 0, 0, width, height );
	blend( prevImage, 0, 0, width, height, 0, 0, width, height, ADD );
//	prevImage = image( prevImage, 0, 0, width, height );
	image( prevImage, 0,0,100,100);
//	image(  )
	
}

void captureEvent(Capture myCapture) {
  myCapture.read();
}


PImage checkBrightness( PImage cur, PImage prev, PImage map) {
	PImage brightMap = createImage(width,height,RGB);
	int pixelCount = width * height;
	cur.loadPixels();
	prev.loadPixels();
	for( int y = 0; y < height; y++) {
		for( int x = 0; x < width; x++) {
			int loc = x + y * width;
			float currentBrightness = brightness(cur.pixels[loc]);
			float previousBrightness = brightness(prev.pixels[loc]);
			if( currentBrightness > previousBrightness ) {
				brightMap.pixels[loc] = color(currentBrightness);
				}
			else{
				brightMap.pixels[loc] = color(previousBrightness);
				}
			}
		}
		return brightMap;
	}