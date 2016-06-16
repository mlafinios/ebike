le = 90;
ra = 36;
mr = 33;
thi = 1.2;
wheelofsx = -385;
wheelofsz = 50;
mntofs = 80;

tirer = 15;
wheelr = 350;

module wheel() {
  rotate_extrude(convexity = 10, $fn = 100)
    translate([wheelr, 0, 0])
      circle(r = tirer, $fn = 100);
}

module motor() {
  cylinder($fn=100,le,mr,mr);
}


module hinge(d1, d2, he) {
   hole1_dia = d1;
   hole2_dia = d2;
   hinge_thickness = 0;
   circle1_height = he;

   module body() {
      module fillerStuff() {
         polygon(points=[[-(hole2_dia + 2*hinge_thickness)/2,0],[-(hole1_dia + 2*hinge_thickness)/2,circle1_height], [(hole1_dia + 2*hinge_thickness)/2,circle1_height], [(hole2_dia + 2*hinge_thickness)/2,0]], paths=[[0,1,2,3]]);
      }
 
      circle( r=(hole2_dia + 2*hinge_thickness)/2 );
      translate([0, circle1_height,0])
      circle( r=(hole1_dia + 2*hinge_thickness)/2 );
      fillerStuff();
   }

   linear_extrude(height = 10, center = false, convexity = 10)
   body();
}

module shield() {
  difference() {
    cylinder($fn=100,le,ra+thi,ra+thi);
      cylinder($fn=100,le,ra,ra);
      translate([0,wheelofsx,wheelofsz])
        wheel();
      translate([-42,10, 88])
        wires();
      translate([0,0,mntofs])
        hinge(20, 65, 80);
      
  }
}

module wires() {
  rotate([0,90,0])
  cylinder($fn=100,10,10,10);
}

//motor();
//translate([-wheelofs,0,20])
//wheel();

shield();

