// Inherit the parent event
event_inherited();
func = function(){
	room_goto_next();	
}
if ( !room_exists(room_next(room)) )
{
	func = game_end;
	text = "Done!";
}