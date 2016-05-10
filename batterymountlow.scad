include <frame.scad>
include <x90.scad>
use <x90batmale.scad>
include <battery.scad>

module batmountlow() {
	batz = 60;

	difference() {
	translate([0,-bat_d/2-thi,0])
	cube([bat_w+thi*2+fr1,bat_d+thi*2,batz+thi]);

	// battery
	translate([fr1+thi,-bat_d/2,thi])
	cube([bat_w,bat_d,batz+1]);

	// frame
	translate([0,0,-1])
	cylinder($fn=100,batz+thi+2,fr1,fr1);

	// wire1
	translate([fr1+thi/2,-bat_d/2+wr+thi,thi])
	cylinder($fn=100,100,wr,wr);

	// wire2
	translate([fr1+thi/2,bat_d/2-wr-thi,thi])
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