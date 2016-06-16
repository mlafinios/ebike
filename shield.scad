ra = 33;
mr = 31;
thi = 1.2;
wheelofsx = -385;
wheelofsz = 46;
platethi = 13;
plated1 = 63.4;
plated2 = 32.2;
platedhe = 97;
tirer = 15;
wheelr = 350;

le = 75;
totle = le+platethi;

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
   hehe = he-d1/2-d2/2;

   module body() {
      module fillerStuff() {
         polygon(points=[[-(hole2_dia + 2*hinge_thickness)/2,0],[-(hole1_dia + 2*hinge_thickness)/2,hehe], [(hole1_dia + 2*hinge_thickness)/2,hehe], [(hole2_dia + 2*hinge_thickness)/2,0]], paths=[[0,1,2,3]]);
      }
 
      circle( r=(hole2_dia + 2*hinge_thickness)/2 );
      translate([0, hehe,0])
      circle( r=(hole1_dia + 2*hinge_thickness)/2 );
      fillerStuff();
   }

   linear_extrude(height = platethi, center = false, convexity = 10)
   body();
}

module shield() {
  difference() {
    cylinder($fn=100,totle,ra+thi,ra+thi);
      cylinder($fn=100,totle,ra,ra);
      translate([0,wheelofsx,wheelofsz])
        wheel();
      translate([0,0,le])
        hinge(plated2, plated1, platedhe);
      translate([-36,6, 70])
        wires();
      translate([-50,-84,70])
        cube([100,100,20]);
      cylinder(20,100,100);
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

