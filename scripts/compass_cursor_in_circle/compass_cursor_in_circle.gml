/// @function compass_cursor_in_circle(x, y, radius)
/// @description returns if the compass cursor is within a circle bounds
/// @param x {real}
/// @param y {real}
/// @param radius {real}
/// @return {bool}
function compass_cursor_in_circle(_x, _y, _rad){
	var _comp = __Compass();
	return ( point_in_circle(_comp.__curs.x, _comp.__curs.y, _x, _y, _rad) );
}