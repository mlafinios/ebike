include <../threads.scad>
include <../roundCornersCube.scad>

difference() {
  union() {
    translate([0,0,16])
      metric_thread(20,1,5);
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
