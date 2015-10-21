difference() {
cylinder($fn = 50, 16, 8, 8);
translate([0,0,-1])
cylinder($fn = 50, 18, 7.5, 7.5);
translate([0,0,-1])
cylinder($fn = 50, 16, 2, 2);

for (a = [1.1:2.2:15])
translate([0,0,a])
for (a = [6:12:354])
  rotate([0,90,a])
    cylinder($fn = 10, 15, 0.5, 0.5);

for (a = [2.2:2.2:15])
translate([0,0,a])
for (a = [0:12:360])
  rotate([0,90,a])
    cylinder($fn = 10, 15, 0.5, 0.5);
}


// 8.5 hours render
