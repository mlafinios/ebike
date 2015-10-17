difference() {
translate([-13,0,0])
difference() {
  cube([26,46,25]);
  translate([2,2,-1])
    cube([22,42,25]);
  translate([3,6,0])
    cube([20,31,26]);
}

translate([0,49,-10])
rotate([90,0,0])
cylinder(50,14.3,14.3);

translate([-8,49,6])
rotate([90,0,0])
cylinder(50,2,2);

translate([8,59,6])
rotate([90,0,0])
cylinder(50,2,2);

translate([-15,4,2])
cube([30,4,2]);

translate([-15,38,2])
cube([30,4,2]);
}


