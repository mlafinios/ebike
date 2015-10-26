include <roundCornersCube.scad>

difference() {
translate([0,-20,10])
cube([40,40,44]);

cylinder($fn=100, 100,14.5,14.5);

rotate([0,59.7,0])
cylinder($fn=100, 100,15.9,15.9);
rotate([0,59.7,0])
translate([0,-30,10])
cube([60,60,80]);

translate([20,-15,44])
cube([15,30,20]);

translate([0,25,15])
rotate([90,0,0])
cylinder($fn=100, 50,21,21);

translate([0,0,41])
difference() {
roundCornersCube(44,33,4,16.5);
roundCornersCube(40,29,4,14.5);
}

rotate([0,59.7,0])
translate([0,0,40])
difference() {
roundCornersCube(44,35.8,4,17.9);
roundCornersCube(40,31.8,4,15.9);
}

translate([-40,-40,0])
cube([80,80,17]);

}

