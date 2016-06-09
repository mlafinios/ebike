use <cabletiehole.scad>
include <x90.scad>
include <frame.scad>
use <x90batmale.scad>

wi = 43;
le = 35;
di = 8;
thi = 1;

difference() {
translate([5,-20,10])
cube([40,40,47]);

scale([1,1.12,1]) {
cylinder($fn=100, 100,fr1,fr1);

translate([0,0,46])
cable_tie_hole(40, 31.8, fr1);
}

rotate([0,59.7,0]) {
  cylinder($fn=100, 100,fr2,fr2);

  translate([0,-30,10])
  cube([60,60,80]);

  translate([0,0,40])
  cable_tie_hole(40, 29, fr2);

  translate([-14,-dbw/2,45])
  cylinder($fn=100, 30,wr,wr);
  translate([-14,dbw/2,45])
  cylinder($fn=100, 30,wr,wr);
}

// bolt holder
rotate([0,90,0]) {
  translate([-52,0,32])
  cylinder($fn=100,40,pbr,pbr);
}

// Hole for battery insert
translate([fr1+hr*2+x90plate_w/2-x90female_w/2,-x90female_d/2,48])
cube([x90female_w,x90female_d,x90female_h+1]);

// Holes from battery insert to frame
translate([fr1+hr*2+x90plate_w/2,-dbw/2,0])
cylinder($fn=100, 100,wr,wr);
translate([fr1+hr*2+x90plate_w/2,dbw/2,0])
cylinder($fn=100, 100,wr,wr);

// Bottom bracket
translate([0,25,15])
rotate([90,0,0])
cylinder($fn=100,50,21,21);

translate([-40,-40,0])
cube([80,80,17]);

}

translate([50,-wi/2-thi, 60]) {
  difference() {
    cube([di+thi*2,wi+thi*2,le+thi]);
    translate([thi, thi, thi])
    cube([di,wi,le]);
  }
  
}


translate([60,-wi/2-thi,40])
rotate([0,59.7-90,0]) {
  cube([di+thi*2,wi+thi*2,100]);
}


rotate([0,59.7,0]) {
  cylinder($fn=100, 100,fr2,fr2);
  }