include <frame.scad>

br = 5.5;
bw = 14;
bl = 20;
bh = 16;
wr = 2;
thi = 1.6;

difference() {
difference() {
  translate([-bl/2-thi,-thi,0])
    cube([bl+thi*2,bw+thi*2,bh+thi]);
  translate([-bl/2,0,0])
    cube([bl,bw,bh]);
  translate([0,bw/2,0])
    cylinder($fn=100,50,br,br);
}

translate([0,-10,-10])
rotate([-90,0,0])
cylinder($fn = 100,50,fr3,fr3);

translate([0,-10,5.5])
rotate([-90,0,0])
cylinder($fn=100,50,wr,wr);

translate([-100,5.6,2])
cube([300,4,2]);

}
