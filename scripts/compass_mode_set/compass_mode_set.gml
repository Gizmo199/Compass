/// @function compass_mode_set(mode)
/// @description this will set the compass mode to be used (e.g. mouse, keyboard, or gamepad)
/// @param mode {real}
/// @return {undefined}
function compass_mode_set(_mode){
	return __Compass().__ModeSet(_mode);
}