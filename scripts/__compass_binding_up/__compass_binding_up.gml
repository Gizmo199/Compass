function __compass_binding_up(){
	return keyboard_check(ord("W")) || keyboard_check(vk_up) || ( gamepad_axis_value(compass_device_get(), gp_axislv) < 0 ) || gamepad_button_check(compass_device_get(), gp_padu)
}