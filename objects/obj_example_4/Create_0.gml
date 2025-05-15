// Inherit the parent event
event_inherited();

title= "Excluded targets!";
text+= "Sometimes you may want to exclude specific instances of an object without swapping the ";
text+= "entire object type with compass. For example, specific desginated inventory slots when ";
text+= "swapping items around, or buttons that are not 'accessible' at the time. This is now ";
text+= "extremely easy to do by using the 'compass_exclude_set', 'compass_exclude_get' and ";
text+= "'compass_exclude_reset' functions! Just pass in an array of instanace IDs and you're ";
text+= "all set!";

specific_button = instance_create_depth(room_width/2, room_height/2, 0, obj_selectable, {
	text : "Exclude me!",
	image_xscale : 32,
	image_yscale : 16,
});
specific_button.func = method(specific_button, function(){
	text = "Im Excluded!";
	image_blend = c_gray;
	compass_exclude_add(id);
});