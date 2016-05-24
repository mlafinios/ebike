use <roundCornersCube.scad>

module cable_tie_hole(a, b, c) {
  difference() {
    roundCornersCube(a+4,b+4,4,c+2);
    roundCornersCube(a,b,4,c);
  }
}
