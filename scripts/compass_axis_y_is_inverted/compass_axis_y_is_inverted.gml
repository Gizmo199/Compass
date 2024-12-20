/// @function compass_axis_y_is_inverted()
/// @description this returns if the x axis is inverted or not
/// @return {undefined}
function compass_axis_y_is_inverted(){
	return ( __Compass().__invert.y < 0 );
}