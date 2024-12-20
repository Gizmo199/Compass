/// @function compass_cursor_is_focus([instance])
/// @description this returns if the compass cursor is hovering over a specific instance
/// @param instance {instance}
/// @return {bool}
function compass_cursor_is_focus(_instance=id){
	return ( __Compass().__targ == _instance );
}