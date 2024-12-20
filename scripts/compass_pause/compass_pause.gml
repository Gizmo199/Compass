/// @function compass_pause(enable)
/// @description pauses the compass input system from being updated
/// @param enable {bool}
/// @return {undefined}
function compass_pause(_enable){
	__Compass().__pause = _enable;
}