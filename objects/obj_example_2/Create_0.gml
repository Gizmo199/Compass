event_inherited();

// Show window cursor for demonstration purposes
window_set_cursor(cr_arrow);

// Enable free cursor movement
compass_cursor_free_enable(true);
compass_attract_set(0.2);

// Info
title= "Free movement"
text+= "We can set Compasses cursor to be 'free' moving by simply using ";
text+= "compass_cursor_free_enable()! This will make both keyboard & gamepads cursors free as well ";
text+= "We can also alter the 'step size' for compass, which dictates how many pixels ";
text+= "the cursor moves per frame or how far the raycast checks for objects per iteration! ";
text+= "you can fine tune this using 'compass_step_set()'.";
text+= "\n\n";
text+= "We can also set the amoutn of attraction that INPUT mode cursors have when not moving! ";
text+= "This is a value between 0 and 1 and will lerp the cursor to the target object when no input is being pressed!";

