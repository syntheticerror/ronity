// Base for motorized functional differential
// It is licensed under the Attribution - Share Alike - Creative Commons license.
// © 2011 by Ron Garrison
// http://www.thingiverse.com/thing:13368

base_l=100;
base_w = 84;
base_h=25;
base_t = 3;

include <mcad\constants.scad>;
include <mcad\math.scad>;
include <boxes.scad>;

difference() {
	union() {
		translate([0,0,base_h/2]) roundedBox([base_w,base_l,base_h],1,false);
		translate([0,0,base_h-5]) roundedBox([base_w,base_l,10],1,true);
	}
	translate([3.5,32,base_h/2]) cylinder(h=25, r=11, center=true);
	translate([0,0,base_h/2+base_t]) roundedBox([base_w-2*base_t,base_l-2*base_t,base_h],1,false);

	translate([-base_w/5,base_l/2,base_h/2]) cube([19.2,base_l,13.4], true);
	
}

translate([(base_w/2-2*base_t),(base_l/2-2*base_t),base_h/2]) roundedBox([4*base_t,4*base_t,base_h],1,false);
translate([(base_w/2-2*base_t),-(base_l/2-2*base_t),base_h/2]) roundedBox([4*base_t,4*base_t,base_h],1,false);
translate([-(base_w/2-2*base_t),(base_l/2-2*base_t),base_h/2]) roundedBox([4*base_t,4*base_t,base_h],1,false);
translate([-(base_w/2-2*base_t),-(base_l/2-2*base_t),base_h/2]) roundedBox([4*base_t,4*base_t,base_h],1,false);


