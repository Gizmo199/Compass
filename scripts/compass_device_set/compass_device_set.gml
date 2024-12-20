/// @function compass_device_set(device)
/// @description sets the device to use for compass
/// @param device {real}
/// @return {undefined}
function compass_device_set(_device){
	__Compass().__device = _device;
}