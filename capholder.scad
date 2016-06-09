use <ring.scad>
include <frame.scad>

capr = 9.4;
hei = 42;
thi = 0.8;

smwr = 1;

module capholder() {
difference() {
  cylinder($fn=100,hei,capr+thi,capr+thi);
  translate([0,0,thi])
  cylinder($fn=100,hei,capr,capr);

  translate([0,0,hei-3]) {
	rotate([0,90,0])
	cylinder($fn=100,hei,smwr,smwr);

	rotate([0,90,20])
	cylinder($fn=100,hei,smwr,smwr);
  }
}
}

module capcap() {
  cylinder($fn=100,1.2,capr+thi,capr+thi);
  cylinder($fn=100,3.7,capr+0.05,capr+0.05);
}

capcap();
//capholder();