/// @function compass_is_paused()
/// @description this returns if the compass system is paused or not
/// @return {bool}
function compass_is_paused(){
	return __Compass().__pause;
}