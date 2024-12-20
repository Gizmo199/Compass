// Store the previous object and set the new object to selectable ui objects
previous_object = compass_object_get();
compass_object_set(obj_selectable_ui);

// Set our xscale and yscale
image_xscale = 50;
image_yscale = 32;
image_index  = 2;

// Set some data and create some buttons!
var _data = 
{
	image_xscale : 20,
	image_yscale : 8
}

// Random buttons
button =
[
	instance_create_depth(x, y - 80, depth-1, obj_example_3_popup_button, _data),
	instance_create_depth(x, y, depth-1, obj_example_3_popup_button, _data),
	instance_create_depth(x, y + 80, depth-1, obj_example_3_popup_button, _data),
	instance_create_depth(bbox_right - 20, bbox_top + 20, depth - 1, obj_example_3_popup_button, 
	{
		text : "x",
		func : function(){
			instance_destroy(obj_example_3_popup);	
		},
		image_xscale : 4,
		image_yscale : 4
	})
];
