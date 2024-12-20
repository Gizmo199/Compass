/// @function compass_step_set(size)
/// @description this sets the step size per raycast iteration or free movement
/// @param size {real}
/// @return {undefined}
function compass_step_set(_size){
	__Compass().__step = _size;
}