difference() {
translate([-12.9,0,0])
difference() {
  cube([26.2,46.2,22]);
  translate([2,2,-1])
    cube([22.2,42.2,22]);
  translate([3.1,6.1,0])
    cube([20.1,31.1,23]);
}

translate([0,49,-10])
rotate([90,0,0])
cylinder($fn = 100, 50,14.3,14.3);

translate([-8,49,7])
rotate([90,0,0])
cylinder($fn = 100, 50,1.9,1.9);

translate([-15,4,2])
cube([30,3,1.5]);

translate([-15,38,2])
cube([30,3,1.5]);
}
