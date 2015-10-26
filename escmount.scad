include <roundCornersCube.scad>

difference() {

union() {
translate([-36,-20,0])
cube([21,40,22]);
translate([-21,-17.5,0])
cube([21,35,22]);
}

translate([-34,-18,2])
cube([15,36,21]);

cylinder($fn=100, 30,14.5,14.5);

translate([0,0,16])
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

