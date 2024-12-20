var was_hover = hover;
hover = compass_cursor_in_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom) && compass_cursor_is_focus();
image_index = hover;

scale_to = 1;
if ( hover ) scale_to = 1.125;
if ( hover && compass_cursor_click() )
{
	func();
	scale = scale_to + 0.25;
}

if ( hover != was_hover && hover ) 
{
	scale = scale_to + 0.1;	
}

image_xscale = xscale * scale;
image_yscale = yscale * scale;
scale = lerp(scale, scale_to, 0.3);