use <dotscad/pie.scad>
include <frame.scad>
include <battery.scad>

batz = 40;

module ring(in, out, h) {
  difference() {
    cylinder($fn=100, h, out, out);
    translate([0,0,-1]) cylinder($fn=100, h+2, in, in);
  }
}

module ringcut(in, out, h, angle, spin) {
  difference() {
    ring(in, out, h);
    translate([0,0,-1]) pie(out+1, angle, h+2, spin);
  }
}

module locker(r1, r2, t, h) {
  translate([0,0,-1]) {
  ringcut(r1, r1+t, h, 270, 180);
  translate([0,r1,0])
    cube([5,t,h]);
  translate([5,r1+r2+t,0])
    ringcut(r2, r2+t, h, 290, -20);
  }
}

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



