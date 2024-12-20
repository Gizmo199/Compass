function compass_cursor_set(_x, _y){
	with ( __Compass() )
	{
		__curs.x = _x;
		__curs.y = _y;	
	}
}