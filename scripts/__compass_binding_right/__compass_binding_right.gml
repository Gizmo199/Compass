function __compass_binding_right(){
	return keyboard_check(ord("D")) || keyboard_check(vk_right) || ( gamepad_axis_value(compass_device_get(), gp_axislh) > 0 ) || gamepad_button_check(compass_device_get(), gp_padr)
}