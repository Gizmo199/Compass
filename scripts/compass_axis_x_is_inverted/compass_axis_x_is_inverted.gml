/// @function compass_axis_x_is_inverted()
/// @description this returns if the x axis is inverted or not
/// @return {undefined}
function compass_axis_x_is_inverted(){
	return ( __Compass().__invert.x < 0 );
}