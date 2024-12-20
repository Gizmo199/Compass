function __compass_binding_down(){
	return keyboard_check(ord("S")) || keyboard_check(vk_down) || ( gamepad_axis_value(compass_device_get(), gp_axislv) > 0 ) || gamepad_button_check(compass_device_get(), gp_padd)
}