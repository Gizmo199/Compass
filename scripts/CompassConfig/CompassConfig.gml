// General
#macro COMPASS_DEFAULT_OBJECT				undefined						// The object or parent object to track
#macro COMPASS_DEFAULT_MODE					compass_mode_mouse				// The default mode to use when compass starts (compass_mode_mouse, compass_mode_keyboard, compass_mode_gamepad)
#macro COMPASS_DEFAULT_AUTO_DETECT			false							// Wether to auto detect inputs used (gamepad, mouse, keyboard)
#macro COMPASS_DEFAULT_FREE_MOVING			false							// If the cursor should be free moving, or snap to objects 
#macro COMPASS_DEFAULT_STEP_SIZE			16								// The step size for both raycasts or free moving speeds
																			
// Inputs																	
#macro COMPASS_DEFAULT_DEVICE				0								// The device used for gamepads and mouse inputs
#macro COMPASS_DEFAULT_TICK_TIME			12								// The tick time 'buffer' when holding directional inputs
#macro COMPASS_DEFAULT_RAYCAST_LENGTH		1024							// The total length of the raycast to search and find objects
#macro COMPASS_DEFAULT_ATTRACTION			0								// How strongly to 'pull' Input mode free movement to a target object

// Bindings
#macro COMPASS_BINDING_BUTTON 				__compass_binding_click()		// You can replace these macros with your own custom functions if you are using (for example)
#macro COMPASS_BINDING_LEFT 				__compass_binding_left()		// Input by Juju adams and Offalynne. Just supply function_call() instead for these macros!
#macro COMPASS_BINDING_RIGHT 				__compass_binding_right()		//
#macro COMPASS_BINDING_DOWN 				__compass_binding_down()		// By default compass uses:
#macro COMPASS_BINDING_UP 					__compass_binding_up()			// [MOUSE]		- mouse_x + mouse_y + mb_left
#macro COMPASS_BINDING_MOUSE_X				__compass_binding_mouse_x()		// [KEYBOARD]	- WASD + ARROW + vk_space
#macro COMPASS_BINDING_MOUSE_Y				__compass_binding_mouse_y()		// [GAMEPAD]	- L-STICK + DPAD + gp_face1
