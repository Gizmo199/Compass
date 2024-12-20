/// @function compass_target_set(instance)
/// @description this will set the target instance for compass
/// @param instance {instance}
/// @return {undefined}
function compass_target_set(_instance){
	__Compass().__targ = _instance;
	compass_cursor_set(_instance.x, _instance.y);
}