// Set the mode info
info = "MODE : ";
switch(compass_mode_get())
{
	case compass_mode_mouse	: info += "MOUSE";	break;
	case compass_mode_input	: info += "INPUT";	break;
}

// Set cursor to free when using mouse
compass_cursor_free_enable(compass_mode_get() == compass_mode_mouse);