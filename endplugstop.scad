module hexagon(size, height) {
  boxWidth = size/1.75;
  for (r = [-60, 0, 60]) rotate([0,0,r]) cube([boxWidth, size, height], true);
}

difference() {
cylinder($fn = 100, 5, 7.4, 7.4);
hexagon(7.1,6);
translate([0,0,-1])
cylinder($fn = 100, 7, 2.2, 2.2);
}

for(i = [-3.5 : 7 : 3.5])
for(j = [-3.5 : 7 : 3.5])
translate([i,j,5])
cube([1, 1, 2], center=true);
