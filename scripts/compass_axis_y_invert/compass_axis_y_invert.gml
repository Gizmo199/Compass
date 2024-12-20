/// @function compass_invert_axis_y(enable)
/// @description this will invert the y axis for directional inputs if enabled
/// @param enable {bool}
/// @return {undefined}
function compass_axis_y_invert(_enable){
	__Compass().__invert.y = ( _enable ? -1 : 1 );
}