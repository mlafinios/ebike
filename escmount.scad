use <roundCornersCube.scad>

module escmount(w, t, h) {
difference() {

union() {
translate([-40,-(w/2+t),0])
cube([25,w+t+t,h+t]);
translate([-21,-17.5,0])
cube([21,35,h+t]);
}

translate([-39,-w/2,t])
cube([10,w,h+t+1]);

translate([-28,-w/2,t])
cube([9,w,h+t+1]);

translate([0,0,-1])
cylinder($fn=100,h+t+2,14.5,14.5);

translate([0,0,h/2+1])
difference() {
roundCornersCube(44,33,4,16.5);
roundCornersCube(40,29,4,14.5);
}
}
}

escmount(36, 1, 20);
