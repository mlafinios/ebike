diameter = 18;   // CHANGE THIS
radius = diameter / 2;
thickness = 0.48;
cap_height = 4;
hole_radius = 1; // CHANGE THIS

difference() {
  union() {
    cylinder($fn=100, cap_height+thickness, radius, radius);
    cylinder($fn=100, thickness, radius+thickness, radius+thickness);
  }
  translate([0,0,-1])
    cylinder($fn=100, cap_height+thickness+2, hole_radius, hole_radius);
}
