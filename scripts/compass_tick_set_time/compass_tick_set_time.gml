/// @function compass_tick_set_time(value)
/// @description this sets the wait time in frames between held directional inputs
/// @param value {real}
/// @return {undefined}
function compass_tick_set_time(_value){
	__Compass().__time = _value;
}