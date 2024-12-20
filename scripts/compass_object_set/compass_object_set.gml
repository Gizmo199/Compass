/// @function compass_object_set(object)
/// @description this sets compass to only search for this object index when navigating
/// @param object {object}
/// @return {undefined}
function compass_object_set(_object){
	with ( __Compass() )
	{
		// Save previous selected object
		if ( _object != __elem && __targ != undefined )
		{
			__stored[$ __elem] = __targ;
		}		
		
		// Reset element, current object, and tick timer
		__elem = _object;
		__targ = __stored[$ _object];
		__tick = 5;		
		
		// Position the nav to the target
		if ( __targ != undefined )
		{
			if ( instance_exists(__targ) )
			{
				compass_target_set(__targ);
			}
			else
			{
				__targ = undefined;
			}
		}
		
		// Remove the stored object after we have 'remembered' it
		__stored[$ _object] = undefined;
	
	}
}