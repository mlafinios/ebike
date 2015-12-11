include <roundCornersCube.scad>

difference() {
  cylinder($fn = 100, 16,6,6);
  translate([-50,0,0])
    rotate([0,90,0])
      cylinder($fn = 100, 100,12.7,12.7);
}
