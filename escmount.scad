use <roundCornersCube.scad>

module escmount(w, t, h) {
difference() {

union() {
translate([-51,-(w/2+t),0])
cube([35,w+t+t,h+t]);
translate([-21,-17.5,0])
cube([21,35,h+t]);
}

translate([-50,-w/2,t])
cube([17,w,h+t+1]);

translate([-32,-w/2,t])
cube([12,w,h+t+1]);

translate([0,0,-1])
cylinder($fn=100,h+t+2,14.5,14.5);

translate([0,0,h/2+1])
difference() {
roundCornersCube(44,33,4,16.5);
roundCornersCube(40,29,4,14.5);
}
}
}

w = 37;
h = 20;
t = 1;

sr = 2.5;
ur = 3;

difference() {
	escmount(w, t, h);
	translate([-37.5,-w/3,-1])
	cylinder($fn=100,3,sr,sr);
	translate([-37.5,w/3,-1])
	cylinder($fn=100,3,sr,sr);
	translate([-37.5,0,-1])
	cylinder($fn=100,3,sr,sr);
	translate([-25.5,0,-1])
	cylinder($fn=100,3,ur,ur);
}

