// Inherit the parent event
event_inherited();

func = function(){
	
	// Toggle the enable
	compass_axis_y_invert(!compass_axis_y_is_inverted());
	
}	