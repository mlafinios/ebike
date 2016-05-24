use <ring.scad>
use <cabletiehole.scad>
include <frame.scad>
include <battery.scad>

vesc_h = 64;
vesc_w = 42;
vesc_d = 20;

mwr = 3;

// for cable tie hole
fcbl = 2.4;

difference() {
  translate([0,-vesc_d/2-thi,0])
  cube([vesc_w+thi*2+fr1+fcbl,vesc_d+thi*2,vesc_h+thi]);

  translate([fr1+thi+fcbl,-vesc_d/2,thi])
  cube([vesc_w,vesc_d,vesc_h+1]);

  translate([0,0,-1])
  cylinder($fn=100,vesc_h+thi+2,fr1,fr1);

  translate([0,0,14])
  cable_tie_hole(36, 26, fr2);

  translate([0,0,vesc_h-12])
  cable_tie_hole(36, 26, fr2);

  // holes for motor wires
  translate([fr1+10,0,-1])
  cylinder($fn=100,5,mwr,mwr);

  translate([fr1+24,0,-1])
  cylinder($fn=100,5,mwr,mwr);

  translate([fr1+38,0,-1])
  cylinder($fn=100,5,mwr,mwr);

  // hole for data cable
  translate([fr1+17,6,-1])
  cylinder($fn=100,5,mwr,mwr);

}
