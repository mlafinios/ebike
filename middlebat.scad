include <x90.scad>
include <frame.scad>
include <battery.scad>

batz = 35;

translate([0,-bat_d/2-thi,0])
cube([bat_w+thi*2+fr1,bat_d+thi*2,0.3]);

difference() {
translate([0,-bat_d/2-thi,0])
cube([bat_w+thi*2+fr1,bat_d+thi*2,batz+thi]);

// battery
translate([fr1+thi,-bat_d/2,thi])
cube([bat_w,bat_d,batz+1]);

// fr1ame
translate([0,0,-1])
cylinder($fn=100,batz+thi+2,fr1,fr1);

// wire1
translate([fr1+thi/2,-bat_d/2+wr+thi,-1])
cylinder($fn=100,50,wr,wr);

// wire2
translate([fr1+thi/2,bat_d/2-wr-thi,-1])
cylinder($fn=100,50,wr,wr);

// bolts
translate([fr1+thi+wr*2,bat_d/2-thi-hr,-1])
cylinder($fn=100,15,hr,hr);
translate([fr1+thi+wr*2,-bat_d/2+thi+hr,-1])
cylinder($fn=100,15,hr,hr);
translate([fr1+bat_w-thi,-bat_d/2+thi+hr,-1])
cylinder($fn=100,15,hr,hr);
translate([fr1+bat_w-thi,bat_d/2-thi-hr,-1])
cylinder($fn=100,15,hr,hr);
}



