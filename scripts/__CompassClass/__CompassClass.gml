function __CompassClass() constructor {
	
	__info = 
	{
		creator	: "Gizmo199",
		version	: "1.0.0"
	}
		
	#macro compass_mode_mouse		0
	#macro compass_mode_input		1
	
	__curs		= { x : 0, y : 0, click : false }
	__step		= COMPASS_DEFAULT_STEP_SIZE;
	__free		= COMPASS_DEFAULT_FREE_MOVING;
	__auto		= COMPASS_DEFAULT_AUTO_DETECT;
	__elem		= COMPASS_DEFAULT_OBJECT;
	__time		= COMPASS_DEFAULT_TICK_TIME;
	__tick		= 1;
	__targ		= undefined;
	__mode		= COMPASS_DEFAULT_MODE;
	__pause		= false;
	__mouse		= { x : 0, y : 0 }
	__device	= COMPASS_DEFAULT_DEVICE;
	__raylen	= COMPASS_DEFAULT_RAYCAST_LENGTH;
	__stored	= {};
	__invert	= { x : 1, y : 1 }
	__attract	= COMPASS_DEFAULT_ATTRACTION;
		
	// Raycasting
	static __RaycastUpdate = function(_x, _y){
		
		// Invert if needed
		_x *= __invert.x;
		_y *= __invert.y;
		
		// See if compass cursor is free moving and just move the nav instead
		if ( __free )
		{
			// Move cursor
			__curs.x += _x * __step;
			__curs.y += _y * __step;
			__targ = instance_nearest(__curs.x, __curs.y, __elem);
			
			// Attract cursor to position if set
			if ( __attract > 0 && point_distance(0, 0, _x, _y) <= 0 )
			{
				__curs.x = lerp(__curs.x, __targ.x, __attract );
				__curs.y = lerp(__curs.y, __targ.y, __attract );
			}
			return;	
		}
		
		// Check if we even need to raycast
		if ( point_distance(0, 0, _x, _y) <= 0 ) {
			__tick = 1;
			return;
		}
		
		// Raycast on tick
		if ( --__tick > 0 ) return;
		__tick = __time;
		
		// No element to search for? exit
		if ( __elem == undefined ) return;		
		
		// Start raycast to find next element
		var _ray = 0;
		var _dir = point_direction(0, 0, _x, _y);
		while( _ray < __raylen )
		{
			var _element = instance_nearest(__curs.x + dcos(_dir) * _ray, __curs.y - dsin(_dir) * _ray, __elem);
			if( _element != __targ )
			{
				__targ  = _element;
				break;
			}
			// Increase ray size
			_ray += __step;
		}
		
	}
	
	// Mode handling
	static __ModeSet = function(_mode){
		__mode = _mode;
		return _mode;
	}
	static __ModeDetect = function(){
		
		static __gamepad_check_any = function(_device){
			
			// Iterate button checks
			var i = 0;
			repeat(28) if ( gamepad_button_check(_device, i++) ) return true;	
		
			// Iterate axis checks
			if ( gamepad_axis_value(_device, gp_axislv) != 0 ) return true;
			if ( gamepad_axis_value(_device, gp_axislh) != 0 ) return true;
			if ( gamepad_axis_value(_device, gp_axisrv) != 0 ) return true;
			if ( gamepad_axis_value(_device, gp_axisrh) != 0 ) return true;
		
			// Return nothing otherwise
			return false;
		}
		
		// Mouse Mode
		if ( point_distance(device_mouse_x(__device), device_mouse_y(__device), __mouse.x, __mouse.y) > 0 )
		{
			return __ModeSet(compass_mode_mouse); 
		}
				
		// Keyboard Mode
		if ( keyboard_check(vk_anykey) || __gamepad_check_any(__device) )
		{
			return __ModeSet(compass_mode_input);
		}

	}
	static __ModeMouse = function()
	{		
		// Set position
		__curs.x		= COMPASS_BINDING_MOUSE_X;
		__curs.y		= COMPASS_BINDING_MOUSE_Y;

		// Set Previous mouse position
		__mouse.x = __curs.x;
		__mouse.y = __curs.y;
		
		// Set the index to undefined or the element
		__targ = instance_nearest(__curs.x, __curs.y, __elem);
		if ( __targ == noone ) __targ = undefined;
			
	}
	static __ModeInput = function(){
		
		// Get the movement
		var _mx = sign(COMPASS_BINDING_RIGHT - COMPASS_BINDING_LEFT);
		var _my = sign(COMPASS_BINDING_DOWN  - COMPASS_BINDING_UP);		
		
		// Update Raycast
		__RaycastUpdate(_mx, _my);
		
		// Set the index to undefined or the element
		__targ ??= instance_nearest(__curs.x, __curs.y, __elem);
		if ( __targ == noone ) __targ = undefined;
		
	}
	
	// Automatically begin running
	time_source_start(time_source_create(time_source_game, 1, time_source_units_frames, method(self, function(){
		
		// Show debug info 
		static _start = false;
		if ( !_start )
		{
			_start = true;
			show_debug_message($"[Compass] v{__info.version} - by {__info.creator} initialized!");
		}
		
		// Check if paused and reset 
		if ( __pause ) 
		{
			__curs.click = false;
			return;
		}
		
		// Auto detect and switch modes
		if ( __auto ) __ModeDetect();
		
		// Update modes
		switch(__mode)
		{
			case compass_mode_mouse		: __ModeMouse(); break;
			case compass_mode_input		: __ModeInput(); break;
		}
		__curs.click	= COMPASS_BINDING_BUTTON;
		
		// Keep track of current elements x/y position
		if ( __targ != undefined )
		{
			if ( instance_exists(__targ) )
			{
				if ( !__free )
				{
					__curs.x = __targ.x;
					__curs.y = __targ.y;
				}
			}
			else
			{
				__targ = undefined;
			}
		}
				
	}), [], -1));
	
}