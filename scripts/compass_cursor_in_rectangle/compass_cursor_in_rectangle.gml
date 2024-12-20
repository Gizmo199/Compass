/// @function compass_cursor_in_rectangle(x1, y1, x2, y2)
/// @description returns if the compass cursor is within a rectange bounds
/// @param x1 {real}
/// @param y1 {real}
/// @param x2 {real}
/// @param y2 {real}
/// @return {bool}
function compass_cursor_in_rectangle(_x1, _y1, _x2, _y2){
	var _comp = __Compass();
	return ( point_in_rectangle(_comp.__curs.x, _comp.__curs.y, _x1, _y1, _x2, _y2) );
}