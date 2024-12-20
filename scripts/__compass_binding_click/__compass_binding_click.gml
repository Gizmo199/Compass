function __compass_binding_click(){
	return	keyboard_check_pressed(vk_space) ||	gamepad_button_check_pressed(compass_device_get(), gp_face1) || device_mouse_check_button_pressed(compass_device_get(), mb_left)
}