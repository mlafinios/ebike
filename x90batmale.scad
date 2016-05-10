include <x90.scad>

module ccube(x, y, z) {
  translate([-x/2, -y/2, 0])
    cube([x, y, z]);
}

// holder thickness
thi = 4;

// hole radius
hr = 1.2;

// push bolt radius
pbr = 1.4;

// baseplate
baseplatex = x90male_w+thi*2+hr*8;
baseplatey = x90male_d+thi*2;

// dist betw wires
dbw = 11;

difference() {

union() {
  // baseplate
  ccube(baseplatex, baseplatey, thi);
  // enclosure
  ccube(x90male_w+thi*2, x90male_d+thi*2, x90male_h+thi);
}

// x90male
translate([0,0,thi])
ccube(x90male_w,x90male_d,x90male_d+1);

// holes for bolts
translate([baseplatex/2-hr*2,baseplatey/2-hr*2,-1])
cylinder($fn=100,thi+2,hr,hr);
translate([-baseplatex/2+hr*2,baseplatey/2-hr*2,-1])
cylinder($fn=100,thi+2,hr,hr);
translate([baseplatex/2-hr*2,-baseplatey/2+hr*2,-1])
cylinder($fn=100,thi+2,hr,hr);
translate([-baseplatex/2+hr*2,-baseplatey/2+hr*2,-1])
cylinder($fn=100,thi+2,hr,hr);

// holes for wires
translate([0,-dbw/2,-1])
cylinder($fn=100,thi+2,x90male_r,x90male_r);
translate([0,dbw/2,-1])
cylinder($fn=100,thi+2,x90male_r,x90male_r);

// holes for bolt that push
rotate([0,90,0]) {
translate([-thi-4,0,-20])
cylinder($fn=100,20,pbr,pbr);
}
}
