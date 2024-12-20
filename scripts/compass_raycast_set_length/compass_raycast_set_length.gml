/// @function compass_raycast_set_length(length)
/// @description this sets the maximum raycast size in pixels when searching for objects
/// @param length {real}
/// @return {undefined}
function compass_raycast_set_length(_length){
	__Compass().__raylen = _length;
}