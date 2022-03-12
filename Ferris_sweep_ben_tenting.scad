difference() {
    translate([-10,0,0]) linear_extrude(70) projection(cut=false) rotate([0,23,0]) linear_extrude(0.000001) projection(cut=false) import("Ferris_sweep_ben_tenting_base.stl", convexity=10);
    
    rotate([0,-23,0]) translate([-200,-200,25]) cube([400,400,69]);
    translate([-200,-200,-76]) cube([400,400,69]);
    translate([-50, -45,1]) cube([63,35,50]);
    translate([0, -30,1]) cube([63,47,50]);
    translate([-14, 20,1]) cube([25,45,50]);
    translate([-50, 20,1]) cube([28,45,50]);
    
    translate([-10,0,1]) linear_extrude(70) projection(cut=false) rotate([0,23,0]) linear_extrude(0.000001) offset(r=-6) projection(cut=false) import("Ferris_sweep_ben_tenting_base.stl", convexity=10);
    
    translate([-10,0,-1]) linear_extrude(70) projection(cut=false) rotate([0,23,0]) linear_extrude(0.000001) offset(r=-10) projection(cut=false) import("Ferris_sweep_ben_tenting_base.stl", convexity=10);
}


difference() {
    union() {
        rotate([0,-23,0]) {
            translate([-53,23,23])  cylinder(h=4, r=1.5, $fn=72);
            translate([-53,-23,23])  cylinder(h=4, r=1.5, $fn=72);
            translate([40,-42,23]) cylinder(h=4, r=1.5, $fn=72);
            translate([33,33,23])  cylinder(h=4, r=1.5, $fn=72);
        }
    }
    translate([-200,-200,-69.0]) cube([400,400,69]);
}



difference() {
    translate([0,-90,-30]) {
        import("Ferris_sweep_ben_tenting_base.stl", convexity=10);
    }
    translate([0,-90,-30]) {
        translate([-53,23,28])  cylinder(h=4, r=2, $fn=72);
        translate([-53,-23,28])  cylinder(h=4, r=2, $fn=72);
        translate([40,-42,28]) cylinder(h=4, r=2, $fn=72);
        translate([33,33,28])  cylinder(h=4, r=2, $fn=72);
        translate([0,0,28]) linear_extrude(5) offset(r=-8) projection(cut=false) import("Ferris_sweep_ben_tenting_base.stl", convexity=10);
    }
    
    translate([-200,-200,-9]) cube([400,400,9]);
    
}
