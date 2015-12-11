
// frame radius
r = 15;

// wire radius
wr = 4;

difference() {
translate([0,-20,0])
cube([73,40,33]);
translate([20,-18,3])
cube([51,36,40]);

// frame
translate([0,0,-1])
cylinder($fn=100,41,r,r);

// wire1
translate([19,-14,3])
cylinder($fn=100,51,wr,wr);

// wire1
translate([19,14,3])
cylinder($fn=100,51,wr,wr);
}
