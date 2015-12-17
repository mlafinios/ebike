use <dotscad/pie.scad>

// frame radius
fr = 16;

// battery width and depth and heig
batx = 50.5;
baty = 44;
batz = 40;

// thickness
thi = 2;

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
translate([0,-baty/2-thi,0])
cube([batx+thi*2+fr,baty+thi*2,batz+thi]);

translate([fr+thi,-baty/2,thi])
cube([batx,baty,batz+1]);

translate([0,0,-1])
cylinder($fn=100,batz+thi+2,fr,fr);

locker(fr, 4, 2.2, 21);
mirror([0,1,0])
locker(fr, 4, 2.2, 21);
cube([10,36,40], center=true);
}



