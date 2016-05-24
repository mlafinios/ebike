use <ring.scad>
include <frame.scad>
include <battery.scad>

batz = 40;

difference() {
  translate([0,-bat_d/2-thi,0])
  cube([bat_w+thi*2+fr1,bat_d+thi*2,batz+thi]);

  translate([fr1+thi,-bat_d/2,thi])
  cube([bat_w,bat_d,batz+1]);

  translate([0,0,-1])
  cylinder($fn=100,batz+thi+2,fr1,fr1);

  locker(fr1, 4, 2.2, 21);
  mirror([0,1,0])
  locker(fr1, 4, 2.2, 21);
  cube([10,36,40], center=true);
}
