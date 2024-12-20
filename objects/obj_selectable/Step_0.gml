var _hover = hover;
hover = false;

// Cursor is in our bounding area?
if ( compass_cursor_in_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom) )
{
	// Set to hover only if we are the target
	// This is useful to avoid multiple buttons hovered if they overlap
	hover = compass_cursor_is_target();
}
image_index = hover;

scale_to = 1;
if ( hover ) scale_to = 1.125;
if ( hover && compass_cursor_click() )
{
	func();
	scale = scale_to + 0.25;
}

if ( hover != _hover && hover ) 
{
	scale = scale_to + 0.1;	
}

image_xscale = xscale * scale;
image_yscale = yscale * scale;
scale = lerp(scale, scale_to, 0.3);