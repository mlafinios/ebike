use <ring.scad>
include <frame.scad>
include <battery.scad>
use <roundCornersCube.scad>

batz = 30;

module rcube(w,d,h,r) {
  translate([w/2, d/2, h/2])
    roundCornersCube(w,d,h,r);
}

difference() {
  translate([0,-bat_d/2-thi,0])
  rcube(bat_w+thi*2+fr1,bat_d+thi*2,batz+thi,3);

  translate([fr1+thi,-bat_d/2,thi])
  rcube(bat_w,bat_d,batz+1,2);

  translate([0,0,-1])
  cylinder($fn=100,batz+thi+2,fr1,fr1);

  locker(fr1, 4, 2.4, 21);
  mirror([0,1,0])
  locker(fr1, 4, 2.4, 21);
  cube([10,36,40], center=true);
}




