use <ring.scad>
include <frame.scad>
include <battery.scad>

batz = 30;

difference() {
  translate([0,-bat_d/2-thi,0])
  rcube(bat_w+thi*2+fr1,bat_d+thi*2,batz+thi,3.5);

  translate([fr1+thi,-bat_d/2,thi])
  rcube(bat_w,bat_d,batz+1,2);

  translate([0,0,-1])
  cylinder($fn=100,batz+thi+2,fr1,fr1);

  translate([3,-fr1-3,0]) {
  roundcutl(3.3, batz+thi);
  }

  translate([3,fr1+3,0]) {
    roundcutr(3.3, batz+thi);
  }

  locker(fr1, 4, 2.4, 21);
  mirror([0,1,0])
  locker(fr1, 4, 2.4, 21);
  cube([10,36,40], center=true);
}




