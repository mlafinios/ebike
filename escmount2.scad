use <roundCornersCube.scad>
use <escmount.scad>

w = 36;
h = 30;
t = 1;

br = 3;  // CHANGE thIS

difference() {
	escmount(w, t, h);
	translate([-25.5,-14,-1])
	cylinder($fn=100,3,br,br);
	translate([-25.5,14,-1])
	cylinder($fn=100,3,br,br);
	translate([-38.5,-14,-1])
	cylinder($fn=100,3,br,br);
	translate([-38.5,14,-1])
	cylinder($fn=100,3,br,br);
}
