// frame radius
fr = 16;

// wire radius
wr = 4;

// bolt radius
br = 1.2;

// battery width and depth and heig
batx = 51;
baty = 43;
batz = 40;

// thickness
thi = 2;

difference() {
translate([0,-baty/2-thi,0])
cube([batx+thi*2+fr,baty+thi*2,batz+thi]);

// battery
translate([fr+thi,-baty/2,thi])
cube([batx,baty,batz+1]);

// frame
translate([0,0,-1])
cylinder($fn=100,batz+thi+2,fr,fr);

// wire1
translate([fr+thi/2,-baty/2+wr+thi,-1])
cylinder($fn=100,100,wr,wr);

// wire2
translate([fr+thi/2,baty/2-wr-thi,-1])
cylinder($fn=100,100,wr,wr);

// bolts
translate([fr+thi+wr*2,baty/2-thi-br,-1])
cylinder($fn=100,15,br,br);
translate([fr+thi+wr*2,-baty/2+thi+br,-1])
cylinder($fn=100,15,br,br);
translate([fr+batx-thi,-baty/2+thi+br,-1])
cylinder($fn=100,15,br,br);
translate([fr+batx-thi,baty/2-thi-br,-1])
cylinder($fn=100,15,br,br);
}



