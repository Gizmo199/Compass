function __compass_binding_left(){
	return keyboard_check(ord("A")) ||	keyboard_check(vk_left) || ( gamepad_axis_value(compass_device_get(), gp_axislh) < 0 ) || gamepad_button_check(compass_device_get(), gp_padl)
}