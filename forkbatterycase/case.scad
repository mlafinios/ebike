diameter = 18.8;   // CHANGE THIS
radius = diameter / 2;
thickness = 0.5;
height = 65;
cap_height = 5;
hole_radius = 1.2;

difference() {
  cylinder($fn=100, cap_height+height+thickness, radius+thickness, radius+thickness);
  translate([0,0,1]) cylinder($fn=100, cap_height+height+1, radius, radius);
  translate([0,0,-1]) cylinder($fn=100, 1+2, hole_radius, hole_radius);
}
