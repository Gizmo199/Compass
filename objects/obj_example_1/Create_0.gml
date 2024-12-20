event_inherited();

// Show window cursor for demonstration purposes
window_set_cursor(cr_arrow);

// Set compass object and auto enable
compass_object_set(obj_selectable);
compass_mode_auto_enable(true);

// Title
title= "Buttons! Buttons everywhere!";

// Information
text+= "This is a basic example of compass navigation! "
text+= "Compass will automatically begin running as soon as you call one of the 'compass_*' functions.\n";
text+= "Compass has 2 modes, Mouse and Input. These modes determine how compass should navigate objects. By enabling ";
text+= "'auto-mode' compass will switch modes based on gamepad, keyboard or mouse inputs! Try it out by moving the mouse or pressing keys! ";
text+= "You can disable auto-mode and manually switch modes using 'compass_mode_set()'";
text+= "\n\n";
text+= "Click the 'Next' button to see the next example!";