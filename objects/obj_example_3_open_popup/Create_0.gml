// Inherit the parent event
event_inherited();

// Create popup
func = function(){
	if ( instance_exists(obj_example_3_popup) ) return;
	instance_create_depth(room_width * 0.5, room_height * 0.5, depth - 1, obj_example_3_popup);
}