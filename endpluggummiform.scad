difference() {
cylinder($fn = 100, 15, 8, 8);
translate([0,0,0.5])
cylinder($fn = 100, 15, 7.5, 7.5);
translate([0,0,-1])
cylinder($fn = 100, 15, 2, 2);
}
