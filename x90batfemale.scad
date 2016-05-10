include <roundCornersCube.scad>
include <x90.scad>

module cable_tie_hole(a, b, c) {
  difference() {
    roundCornersCube(a+4,b+4,4,c+2);
    roundCornersCube(a,b,4,c);
  }
}

r1 = 14.5;
r2 = 16;
x90female_r = 4;

difference() {
translate([5,-20,10])
cube([45,40,60]);

scale([1,1.125,1]) {
cylinder($fn=100, 100,r2,r2);

translate([0,0,60])
cable_tie_hole(40, 31.8, r2);

translate([0,0,44])
cable_tie_hole(40, 31.8, r2);
}

rotate([0,59.7,0]) {
  cylinder($fn=100, 100,r1,r1);

  translate([0,-30,10])
  cube([60,60,80]);

  translate([0,0,40])
  cable_tie_hole(40, 29, r1);

  translate([-14,-6,51])
  cylinder($fn=100, 30,x90female_r,x90female_r);
  translate([-14,6,51])
  cylinder($fn=100, 30,x90female_r,x90female_r);
}

// bolt holder
rotate([0,90,0]) {
  translate([-65,0,42])
  cylinder($fn=100,10,pbr,pbr);
}


th = 4;

// hole radius
hr = 1.2;

// baseplate
baseplatex = x90female_w+th*2+hr*8;
baseplatey = x90female_d+th*2;

// Hole for battery insert
translate([r2+hr*6+baseplatex/2-x90female_w/2,-x90female_d/2,61])
cube([x90female_w,x90female_d,x90female_h+1]);

// Holes from battery insert to frame
translate([r2+hr*6+baseplatex/2,-6,0])
cylinder($fn=100, 100,x90female_r,x90female_r);
translate([r2+hr*6+baseplatex/2,6,0])
cylinder($fn=100, 100,x90female_r,x90female_r);

// Bottom bracket
translate([0,25,15])
rotate([90,0,0])
cylinder($fn=100, 50,21,21);

translate([-40,-40,0])
cube([80,80,17]);

}

