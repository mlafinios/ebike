use <cabletiehole.scad>
use <roundCornersCube.scad>
include <frame.scad>

capr = 9.2;
wi = 43;
de = 21;
he = 150;
thi = 0.8;

mwr = 3;
dcr = 2.4;
// for cable tie hole
fcbl = 2.4;

module cuttedbox(w,d,h,r,dis) {
  difference() {
  translate([0, d/2+r-dis, h/2])
  roundCornersCube(w,d,h,w*w*w/20000);
  cylinder($fn=100,h,r,r);
  }
}

module bigbox() {
difference() {
cuttedbox(wi+thi*2, de+thi*2, he, fr2, 5);
translate([0,0,thi])
cuttedbox(wi, de, he, fr2+thi, 5);

translate([0,0,10])
cable_tie_hole(fr2*2+4, fr2*2+4, fr2);

translate([0,0,70])
cable_tie_hole(fr2*2+6, fr2*2+4, fr2);

translate([0,0,140])
cable_tie_hole(fr2*2+6, fr2*2+4, fr2);

translate([-19,22,0]) {
  // holes for motor wires
  translate([7.2,0,-1])
  cylinder($fn=100,5,mwr,mwr);

  translate([19.5,0,-1])
  cylinder($fn=100,5,mwr,mwr);

  translate([31.7,0,-1])
  cylinder($fn=100,5,mwr,mwr);

  // hole for data cable
  translate([1,-8,-1])
  cylinder($fn=100,60,dcr,dcr);
}

}
}

module bigboxcap() {

difference() {
union() {
  cuttedbox(wi+thi*2, de+thi*2, 1, fr2, 5);
  translate([0,0,1])
  cuttedbox(wi+0.4, de+0.4, 3, fr2+thi, 5);
}

translate([0,22,0]) {
translate([-6,0,-1])
cylinder($fn=100,20,mwr,mwr);

translate([6,0,-1])
cylinder($fn=100,20,mwr,mwr);
}

}
}

//bigbox();
bigboxcap();
