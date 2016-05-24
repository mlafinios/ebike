use <ring.scad>
include <frame.scad>

module locker(r1, r2, t, h) {
  ringcut(r1, r1+t, h, 270, 180);
  translate([0,r1,0])
    cube([6,t,h]);
  translate([6,r1+r2+t,0])
    ringcut(r2, r2+t, h, 290, -20);
}

locker(fr1, 4, 2, 20);
mirror([0,1,0])
locker(fr1, 4, 2, 20);
