use <dotscad/pie.scad>
use <threads.scad>

module ring(in, out, h) {
  difference() {
    cylinder(h, out, out);
    translate([0,0,-1]) cylinder(h+2, in, in);
  }
}

module ringcut(in, out, h, angle, spin) {
  difference() {
    ring(in, out, h);
    translate([0,0,-1]) pie(out+1, angle, h+2, spin);
  }
}

module locker(r1, r2, t, h) {
  translate([0,0,0]) {
  ringcut(r1, r1+t, h, 270, 180);
  translate([0,r1,0])
    cube([5,t,h]);
  translate([5,r1+r2+t,0])
    ringcut(r2, r2+t, h, 290, -20);
  }
}



difference() {
  metric_thread(42,2,8);
  translate([0,0,-1])
  cylinder(12, 18.5, 18.5);
}
