include <x90.scad>
include <frame.scad>
include <battery.scad>

batz = 30;

difference() {
translate([0,-bat_d/2-thi,0])
rcube(bat_w+thi*2+fr1,bat_d+thi*2,batz+thi,3);

// battery
translate([fr1+thi,-bat_d/2,thi])
rcube(bat_w,bat_d,batz+1,2);

// fr1ame
translate([0,0,-1])
cylinder($fn=100,batz+thi+2,fr1,fr1);

// wire1
translate([fr1+thi/2,-bat_d/2+wr+thi,-1])
cylinder($fn=100,50,wr,wr);

// wire2
translate([fr1+thi/2,bat_d/2-wr-thi,-1])
cylinder($fn=100,50,wr,wr);

translate([3,-fr1-3,0]) {
  roundcutl(3.3, batz+thi);
}

translate([3,fr1+3,0]) {
  roundcutr(3.3, batz+thi);
}

}


