use <ring.scad>
include <frame.scad>

capr = 9.2;
hei = 40;
wr = 3;
thi = 1;

module capcyl() {
  ring(capr, capr+thi, hei);
}

module wirecyl() {
  ring(wr, wr+thi, hei);
}

translate([0,-3-capr,0])
capcyl();
translate([-2-wr,0,0])
wirecyl();

translate([0,3+capr,0])
capcyl();
translate([2+wr,0,0])
wirecyl();
