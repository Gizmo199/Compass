/// @function compass_mode_auto_enable(enable)
/// @description this will enable compass to automatically detect which mode is being used based on inputs receieved
/// @param enable {bool}
/// @return {undefined}
function compass_mode_auto_enable(_enable){
	__Compass().__auto = _enable;
}