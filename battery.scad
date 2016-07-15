use <roundCornersCube.scad>

bat_w = 51.8;
bat_d = 45.8;

// thickness
thi = 1.6;

module rcube(w,d,h,r) {
  translate([w/2, d/2, h/2])
    roundCornersCube(w,d,h,r);
}

module roundcutl(r, h) {
  difference() {
    translate([-r,-r,0])
    cube([r*2,r*2,h]);
    cylinder($fn=100,h,r,r);
    cube([r,r,h]);
    translate([0,-r,0])
    cube([r,r,h]);
    translate([-r,-r,0])
    cube([r,r,h]);
  }
}

module roundcutr(r, h) {
  difference() {
    translate([-r,-r,0])
    cube([r*2,r*2,h]);
    cylinder($fn=100,h,r,r);
    cube([r,r,h]);
    translate([0,-r,0])
    cube([r,r,h]);
    translate([-r,0,0])
    cube([r,r,h]);
  }
}
