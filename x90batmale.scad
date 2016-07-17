include <x90.scad>
use <roundCornersCube.scad>

module ccube(x, y, z) {
  translate([-x/2, -y/2, 0])
    cube([x, y, z]);
}

module rccube(x, y, z) {
  translate([-x/2, -y/2, 0])
    rrc(x, y, z, 2);
}

module batmale() {
  difference() {

    union() {
      // baseplate
      rccube(x90plate_w, x90plate_d, 3);
      // enclosure
      rccube(x90male_w+th*2, x90male_d+th, x90male_h+th);
    }

    // x90male
    translate([0,0,th])
    ccube(x90male_w+0.4,x90male_d+0.4,x90male_d+1);

    // holes for bolts
    translate([x90plate_w/2-hr*2,x90plate_d/2-hr*2,-1])
    cylinder($fn=100,th+2,hr,hr);
    translate([-x90plate_w/2+hr*2,x90plate_d/2-hr*2,-1])
    cylinder($fn=100,th+2,hr,hr);
    translate([x90plate_w/2-hr*2,-x90plate_d/2+hr*2,-1])
    cylinder($fn=100,th+2,hr,hr);
    translate([-x90plate_w/2+hr*2,-x90plate_d/2+hr*2,-1])
    cylinder($fn=100,th+2,hr,hr);

    // holes for wires
    translate([0,-dbw/2,-1])
    cylinder($fn=100,th+2,wr,wr);
    translate([0,dbw/2,-1])
    cylinder($fn=100,th+2,wr,wr);

    // holes for bolt that push
    rotate([0,90,0]) {
    translate([-th-4,6,-20])
    cylinder($fn=100,220,pbr,pbr);
    translate([-th-4,-6,-20])
    cylinder($fn=100,220,pbr,pbr);
    }
  }
}

batmale();
