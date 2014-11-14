// Units are dimensionless. This design assumes mm.

difference() {

difference() {
 	cube([66+10,159+10,5]);
	translate([5, 5, 2.5]) {
 		cube([66,159,5]);
	}
}

for ( x = [0 : 6], y = [0 : 17] )
{
	assign(xpos = y % 2 == 0 ? x * 12 : (x * 12) + 6, ypos = y * 10)
	{
		translate([xpos, ypos, -1])
		rotate(90, [0, 0, 1])
		{
			cylinder(h=2, r=5, $fn=6);
		}
	}
}

}