// Inherit the parent event
event_inherited();

title= "Object targets!";
text+= "Creating things like popups are a breeze! Using 'compass_object_set()' we can define specific ";
text+= "parent objects to be used by compass. Here we just create some buttons that are parented with ";
text+= "'obj_selectable_ui' instead of 'obj_selectable'! Input mode will also automatically remember ";
text+= "The last target instance when switching objects, so that when you switch back it will ";
text+= "immediately re-target the previously targeted instance! (only in non-free mode)";