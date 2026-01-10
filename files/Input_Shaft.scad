// Input shaft for motorized functional differential 
// It is licensed under the Attribution - Share Alike - Creative Commons license.
// © 2011 by Ron Garrison
// http://www.thingiverse.com/thing:13368

difference() {
translate([0,0,-20]) difference() {
import_stl ("Shaft.stl", convexity=6);
cube([10,10,40], true);
}
difference() {
	translate(v=[0,0,3]) cylinder (h=6, r=3.8,center=true);
	translate([0,6.25,3]) cube([7,7,6],true);
	translate([0,-6.25,3]) cube([7,7,6],true);
	}
}

translate([0,0,6.5]) cylinder(h=1, r=2, center=true);