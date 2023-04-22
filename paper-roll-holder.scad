// The platform that screws on the bottom side of the cabinet
difference() {
  cube([50, 200, 4]);
  
  // Screw 1 close to the side wall  
  translate([15, 20, 0]) {
    translate([0, 0, 2]) cylinder(2, 4, 4);
    cylinder(3, 2, 2);
  }
  
  // Screw 2 close to the side wall  
  translate([35, 20, 0]) {
    translate([0, 0, 2]) cylinder(2, 4, 4);
    cylinder(3, 2, 2);
  }
  
  // Screw 1 away from the side wall  
  translate([15, 180, 0]) {
    translate([0, 0, 2]) cylinder(2, 4, 4);
    cylinder(3, 2, 2);
  }
  
  // Screw 2 away from the side wall  
  translate([35, 180, 0]) {
    translate([0, 0, 2]) cylinder(2, 4, 4);
    cylinder(3, 2, 2);
  }
}


// The side wall that connects the pole and the base platform
cube([50, 4, 100]);

// The rounded corner on the side wall that is concentric with the pole
translate([25, 4, 100]) rotate([90, 0, 0]) cylinder(4, 25, 25);

// The protruding pole the paper roll goes around
translate([25, 200, 100]) rotate([90, 0, 0]) difference() {
  cylinder(200, 10, 10);
  cylinder(200, 6, 6);    
}