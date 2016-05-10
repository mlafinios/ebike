include <frame.scad>
include <x90.scad>
use <x90batmale.scad>

module batmountlow() {
	// wire radius
	wr = 4;

	// battery width and depth and heig
	batx = 51;
	baty = 42;
	batz = 60;

	// thickness
	thi = 2;

	difference() {
	translate([0,-baty/2-thi,0])
	cube([batx+thi*2+fr1,baty+thi*2,batz+thi]);

	// battery
	translate([fr1+thi,-baty/2,thi])
	cube([batx,baty,batz+1]);

	// frame
	translate([0,0,-1])
	cylinder($fn=100,batz+thi+2,fr1,fr1);

	// wire1
	translate([fr1+thi/2,-baty/2+wr+thi,thi])
	cylinder($fn=100,100,wr,wr);

	// wire2
	translate([fr1+thi/2,baty/2-wr-thi,thi])
	cylinder($fn=100,100,wr,wr);

	// holes for bolts
	translate([fr1+x90plate_w,x90plate_d/2-hr*2,-1])
	cylinder($fn=100,th+2,hr,hr);
	translate([fr1+hr*4,x90plate_d/2-hr*2,-1])
	cylinder($fn=100,th+2,hr,hr);
	translate([fr1+x90plate_w,-x90plate_d/2+hr*2,-1])
	cylinder($fn=100,th+2,hr,hr);
	translate([fr1+hr*4,-x90plate_d/2+hr*2,-1])
	cylinder($fn=100,th+2,hr,hr);

	// holes for wires
	translate([fr1+x90plate_w/2+hr*2,-dbw/2,-1])
	cylinder($fn=100,th+2,wr,wr);
	translate([fr1+x90plate_w/2+hr*2,dbw/2,-1])
	cylinder($fn=100,th+2,wr,wr);
	}
}

batmountlow();

//translate([fr1+x90plate_w/2+hr*2, 0, -1])
//rotate([0,180,0])
//batmale();