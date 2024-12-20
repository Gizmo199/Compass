/// @function compass_cursor_is_target([instance])
/// @description this returns if the compass cursor is hovering over a specific instance
/// @param instance {instance}
/// @return {bool}
function compass_cursor_is_target(_instance=id){
	return ( __Compass().__targ == _instance );
}