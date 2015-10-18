/*difference() {
  union() {
    translate([0,0,16])
    cylinder(16,10,10);
  }
  translate([-50,0,0])
    rotate([0,90,0])
      cylinder(100,12.7,12.7);
  translate([0,0,14])
    rotate([90,0,0])
      roundCornersCube(8,1,22,1);
  translate([10,0,12])
    roundCornersCube(4,2,22,1);
  translate([-10,0,12])
    roundCornersCube(4,2,22,1);
}

*/

difference() {
union() {
cylinder(2,21,22);
cylinder(4,14,14);
}
translate([0,0,-0.1]) {
cylinder(3.2,8,4);
cylinder(5,4,4);
}
}