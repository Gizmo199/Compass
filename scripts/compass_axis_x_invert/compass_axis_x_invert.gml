/// @function compass_invert_axis_x(enable)
/// @description this will invert the x axis for directional inputs if enabled
/// @param enable {bool}
/// @return {undefined}
function compass_axis_x_invert(_enable){
	__Compass().__invert.x = ( _enable ? -1 : 1 );
}