include <roundCornersCube.scad>

module cable_tie_hole(a, b, c) {
  difference() {
    roundCornersCube(a+4,b+4,4,c+2);
    roundCornersCube(a,b,4,c);
  }
}

r1 = 14.5;
r2 = 16;

difference() {
translate([0,-20,10])
cube([40,40,60]);

cylinder($fn=100, 100,r2,r2);

translate([0,0,60])
cable_tie_hole(40, 31.8, r2);

translate([0,0,44])
cable_tie_hole(40, 31.8, r2);

rotate([0,59.7,0]) {
  cylinder($fn=100, 100,r1,r1);

  translate([0,-30,10])
  cube([60,60,80]);

  translate([0,0,40])
  cable_tie_hole(40, 29, r1);

  translate([-14,-6,40])
  cylinder($fn=100, 30,3,3);
  translate([-14,6,40])
  cylinder($fn=100, 30,3,3);
}

// Hole for battery insert
translate([22,-10,41])
cube([10,20,30]);

// Holes from battery insert to frame
translate([27,-6,0])
cylinder($fn=100, 100,3,3);
translate([27,6,0])
cylinder($fn=100, 100,3,3);

// Bottom bracket
translate([0,25,15])
rotate([90,0,0])
cylinder($fn=100, 50,21,21);

translate([-40,-40,0])
cube([80,80,17]);

}
