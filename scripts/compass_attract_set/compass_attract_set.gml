/// @function compass_attract_set(amount)
/// @description when input mode is active this will pull the cursor to targets if not moving
/// @param value {real}
/// @return {undefined}
function compass_attract_set(_value){
	__Compass().__attract = clamp(_value, 0, 1);
}