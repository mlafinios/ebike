difference() {

union() {
translate([21,-20,0])
cube([52,40,33]);
translate([0,-20,0])
cube([21,40,33]);
}

translate([20,-18,3])
cube([51,36,40]);

cylinder($fn=100, 41,14.5,14.5);

}

translate([20,-14.7,-10])
cube([14.4,29.4,10]);
