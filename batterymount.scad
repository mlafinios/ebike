use <dotscad/pie.scad>

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
translate([0,-22.4,0])
cube([69.6,44.8,40]);

translate([17,-20.3,2])
cube([50,40.4,40]);

translate([0,0,-1])
cylinder($fn=100, 42,14.5,14.5);

translate([17,-12,-1])
cube([5,24,6]);

locker(14.5, 4, 2.2, 21);
mirror([0,1,0])
locker(14.5, 4, 2.2, 21);
cube([10,30,40], center=true);
}



