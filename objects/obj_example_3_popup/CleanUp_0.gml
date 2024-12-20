// Reset to the previous object
compass_object_set(previous_object);

// Destroy buttons
array_foreach(button, function(_button){
	
	instance_destroy(_button);
	
});