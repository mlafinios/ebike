// frame radius
fr = 16;

// wire radius
wr = 4;

// bolt radius
br = 1.2;

// battery width and depth and heig
batx = 51;
baty = 42;
batz = 60;

// this is real thingie
// baty is left unchanged for compatibility
// with bolt holes and wire holes
realbaty=42;

// thickness
thi = 2;

difference() {
translate([0,-baty/2-thi,0])
cube([batx+thi*2+fr,baty+thi*2,batz+thi]);

// battery
translate([fr+thi,-realbaty/2,thi])
cube([batx,realbaty,batz+1]);

// frame
translate([0,0,-1])
cylinder($fn=100,batz+thi+2,fr,fr);

// wire1
translate([fr+thi/2,-baty/2+wr+thi,thi])
cylinder($fn=100,100,wr,wr);

// wire2
translate([fr+thi/2,baty/2-wr-thi,thi])
cylinder($fn=100,100,wr,wr);


// x90male size
x90x = 11;
x90y = 22;

th = 4;

// hole radius
hr = 1.2;

// baseplate
baseplatex = x90x+th*2+hr*8;
baseplatey = x90y+th*2;

// holes for bolts
translate([fr+baseplatex,baseplatey/2-hr*2,-1])
cylinder($fn=100,th+2,hr,hr);
translate([fr+hr*4,baseplatey/2-hr*2,-1])
cylinder($fn=100,th+2,hr,hr);
translate([fr+baseplatex,-baseplatey/2+hr*2,-1])
cylinder($fn=100,th+2,hr,hr);
translate([fr+hr*4,-baseplatey/2+hr*2,-1])
cylinder($fn=100,th+2,hr,hr);

}
