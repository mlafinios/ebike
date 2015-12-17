
// bolt radius
br = 1.1;

// battery width and depth and heig
chax = 27.4;
chay = 16.9;
chaz = 4;
chazl = 3.15;

// bolt in depth
bi = 1.4;

// thickness
t = 1;

// bolt hat radius
bh = 2.1;

// usb
usby = 8;
usbz = 2.7;

// pcb
pcbz = 1.6;

// led
led1x = 6.5;
led2x = 11.5;
ledy = 1.2;
ledr = 1;

// wire radius
wr = 1;

module hexagon(size, height) {
  boxWidth = size/1.75;
  for (r = [-60, 0, 60]) rotate([0,0,r]) cube([boxWidth, size, height], true);
}

difference() {
cube([chax+2*t, chay+4*t+4*bh, chaz/2+t+bi]);
translate([t, 2*t+2*bh, t])
cube([chax, chay, chaz]);

// bolts
translate([t+bh,t+bh,-1])
cylinder($fn=50,10,br,br);
translate([t+bh,3*t+3*bh+chay,-1])
cylinder($fn=50,10,br,br);
translate([t+chax-bh,3*t+3*bh+chay,-1])
cylinder($fn=50,10,br,br);
translate([t+chax-bh,t+bh,-1])
cylinder($fn=50,10,br,br);

// holes for hats

translate([t+bh,t+bh,bi/2-0.01])
hexagon(bh*2, bi);
translate([t+bh,3*t+3*bh+chay,bi/2-0.01])
hexagon(bh*2, bi);
translate([t+chax-bh,3*t+3*bh+chay,bi/2-0.01])
hexagon(bh*2, bi);
translate([t+chax-bh,t+bh,bi/2-0.01])
hexagon(bh*2, bi);

/*
translate([t+bh,t+bh,-1])
cylinder($fn=50,bi+1,bh,bh);
translate([t+bh,3*t+3*bh+chay,-1])
cylinder($fn=50,bi+1,bh,bh);
translate([t+chax-bh,3*t+3*bh+chay,-1])
cylinder($fn=50,bi+1,bh,bh);
translate([t+chax-bh,t+bh,-1])
cylinder($fn=50,bi+1,bh,bh);
*/

// usb hole
translate([-1,chay/2+2*t+2*bh-usby/2,t+pcbz])
cube([10, usby, usbz]);

// led holes
/*
translate([t+led1x,2*t+2*bh+ledy,-1])
cylinder($fn=50,t+2,ledr,ledr);
translate([t+led2x,2*t+2*bh+ledy,-1])
cylinder($fn=50,t+2,ledr,ledr);
*/

// wire holes
translate([t+chax-1,chay/4+2*t+2*bh,chaz/2+t+bi])
rotate([0,90,0])
cylinder($fn=50,t+2,wr,wr);
translate([t+chax-1,chay/4*3+2*t+2*bh,chaz/2+t+bi])
rotate([0,90,0])
cylinder($fn=50,t+2,wr,wr);
}
