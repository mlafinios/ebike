use <roundCornersCube.scad>
use <escmount.scad>

w = 36;
h = 30;
t = 1;

sr = 2.5;
br = 3;

difference() {
	escmount(w, t, h);
	translate([-23.5,-w/3,-1])
	cylinder($fn=100,3,br,br);
	translate([-23.5,w/3,-1])
	cylinder($fn=100,3,br,br);
	translate([-33.5,-w/3,-1])
	cylinder($fn=100,3,br,br);
	translate([-33.5,w/3,-1])
	cylinder($fn=100,3,br,br);
}