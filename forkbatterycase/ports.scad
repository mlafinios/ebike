d=22;
t=1;

difference(){
union() {
difference() {
cylinder($fn=100, 33.6, d/2, d/2);
translate([0,0,1.6])
cylinder($fn=100, 33, d/2-t, d/2-t);
translate([4,0,-1])
cylinder($fn=100, 4, 4.1, 4.1);
translate([-8.5,-4.4,-1])
cube([4,8.8,4]);

translate([0.4,6.7,-1])
cylinder($fn=100, 4, 1.6, 1.6);
translate([0.4,-6.7,-1])
cylinder($fn=100, 4, 1.6, 1.6);
}

translate([-0.2,0,0])
difference() {
union() {
translate([-3.5,-d/2+1,0])
cube([1.2,d-2,22]);
translate([-6.3,-8.8,0])
cube([1.4,17.6,22]);
}
translate([-8,-8,-1])
cube([8,16,30]);
}
}

/*translate([0,0,10])
cylinder($fn=100, 20, 20, 20);*/
}

/*translate([-5.2,-8.5,0])
cube([1.5,17,8]);
*/