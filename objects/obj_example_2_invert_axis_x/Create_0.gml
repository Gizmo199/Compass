// Inherit the parent event
event_inherited();

func = function(){
	
	// Toggle the enable
	compass_axis_x_invert(!compass_axis_x_is_inverted());
	
}	