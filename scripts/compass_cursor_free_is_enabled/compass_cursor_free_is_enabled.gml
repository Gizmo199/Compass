/// @function compass_cursor_free_is_enabled()
/// @description this returns if free movement is enabled for the cursor
/// @return {bool}
function compass_cursor_free_is_enabled(){
	return __Compass().__free;
}