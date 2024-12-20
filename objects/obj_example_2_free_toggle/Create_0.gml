// Inherit the parent event
event_inherited();

func = function(){
	
	// Toggle the enable
	compass_cursor_free_enable(!compass_cursor_free_is_enabled());
	
}	