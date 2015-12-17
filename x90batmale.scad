module ccube(x, y, z) {
  translate([-x/2, -y/2, 0])
    cube([x, y, z]);
}

// x90male size
x90x = 11;
x90y = 22;
x90z = 15;

// holder thickness
thi = 4;

// hole radius
hr = 1.2;

// wire radius
wr = 3;

// push bolt radius
pbr = 1.4;

// baseplate
baseplatex = x90x+thi*2+hr*8;
baseplatey = x90y+thi*2;

// dist betw wires
dbw = 11;

difference() {

union() {
  // baseplate
  ccube(baseplatex, baseplatey, thi);
  // enclosure
  ccube(x90x+thi*2, x90y+thi*2, x90z+thi);
}

// x90male
translate([0,0,thi])
ccube(x90x,x90y,x90z+1);

// holes for bolts
translate([baseplatex/2-hr*2,baseplatey/2-hr*2,-1])
cylinder($fn=100,thi+2,hr,hr);
translate([-baseplatex/2+hr*2,baseplatey/2-hr*2,-1])
cylinder($fn=100,thi+2,hr,hr);
translate([baseplatex/2-hr*2,-baseplatey/2+hr*2,-1])
cylinder($fn=100,thi+2,hr,hr);
translate([-baseplatex/2+hr*2,-baseplatey/2+hr*2,-1])
cylinder($fn=100,thi+2,hr,hr);

// holes for wires
translate([0,-dbw/2,-1])
cylinder($fn=100,thi+2,wr,wr);
translate([0,dbw/2,-1])
cylinder($fn=100,thi+2,wr,wr);

// holes for bolts that push
rotate([0,90,0]) {
translate([-x90z,-x90y/4,-50])
cylinder($fn=100,100,pbr,pbr);
translate([-x90z,x90y/4,-50])
cylinder($fn=100,100,pbr,pbr);
}
}
