/// @function compass_device_get()
/// @description returns the current device index used for compass
/// @return {real}
function compass_device_get(){
	return __Compass().__device;
}