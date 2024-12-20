/// @function compass_cursor_free_enable(enable)
/// @description this will enable free movement of cursors instead of locking onto objects
/// @param enable {bool}
/// @return {undefined}
function compass_cursor_free_enable(_enable){
	__Compass().__free = _enable;
}