diameter = 18;   // CHANGE THIS
radius = diameter / 2;
thickness = 0.5;
height = 65;     // CHANGE THIS
cap_height = 5;
hole_radius = 1; // CHANGE THIS

difference() {
  cylinder($fn=100, cap_height+height+thickness, radius+thickness, radius+thickness);
  translate([0,0,thickness]) cylinder($fn=100, cap_height+height+1, radius, radius);
  translate([0,0,-1]) cylinder($fn=100, thickness+2, hole_radius, hole_radius);
}
