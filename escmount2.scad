include <roundCornersCube.scad>

difference() {

union() {
translate([-38,-20,0])
cube([23,40,38]);
translate([-21,-17.5,0])
cube([21,35,38]);
}

translate([-36,-18,2])
cube([17,36,40]);

cylinder($fn=100, 41,14.5,14.5);

translate([0,0,31])
difference() {
roundCornersCube(44,33,4,16.5);
roundCornersCube(40,29,4,14.5);
}

translate([0,0,6])
difference() {
roundCornersCube(44,33,4,16.5);
roundCornersCube(40,29,4,14.5);
}

}

