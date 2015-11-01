diameter = 20;   // CHANGE THIS
radius = diameter / 2;
thickness = 1;
cap_height = 4;
hole_radius = 1.2; // CHANGE THIS

difference() {
  union() {
    cylinder($fn=100, cap_height+thickness, radius, radius);
    cylinder($fn=100, thickness, radius+thickness, radius+thickness);
  }
  translate([6,0,-1])
    cylinder($fn=100, cap_height+thickness+2, hole_radius, hole_radius);
  translate([-6,0,-1])
    cylinder($fn=100, cap_height+thickness+2, hole_radius, hole_radius);
}
