include <fr1ame.scad>

// fr1ame radius
fr1 = 16;

// battery width and depth and heig
batx = 51;
baty = 43;
batz = 30;

// wire radius
wr = 4;

difference() {
translate([0,-22.4,0])
cube([69.6,44.8,80]);

// bottom battery
translate([17,-20.3,-1])
cube([50,40.4,40]);

// top battery
translate([17,-20.3,41])
cube([50,40.4,40]);

// fr1ame
translate([0,0,-1])
cylinder($fn=100,82,fr1,fr1);

// wire1
translate([16,-16,30])
cylinder($fn=100,51,wr,wr);

// wire2
translate([16,16,30])
cylinder($fn=100,51,wr,wr);
}



