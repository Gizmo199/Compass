/// @function compass_exclude_set(instance_or_array)
/// @description this allows compass to exclude specific instances of objects within the set object class
/// @param instance_or_array {instance|array}
/// @return {undefined}
function compass_exclude_set(_id_or_array){
	if ( _id_or_array == undefined ) return;
	if ( !is_array(_id_or_array) ) _id_or_array = [_id_or_array];
	__Compass().__exclude = _id_or_array;
}