/// @function compass_tick_get_time()
/// @description returns the wait time in frames set for held directional inputs
/// @return {real}
function compass_tick_get_time(){
	return __Compass().__time;
}