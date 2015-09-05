///bezier_point_set(id, pos, weight, value 1, value 2, ...)
/*
    Same as bezier_point_add, except it replaces a specified point with a new one.
    Argument0:  id of bezier path
    Argument1:  which point to replace, starting at 1
    Argument2:  the weight of that point, normally set to 1.
    Argument3 - ...:    The value of that dimension for that point
    Returns:    N/A
 */
 
var __id=argument[0],
    __array;
__array[0]=argument[2];
for (var i=1;i<argument_count-2;++i)
    __array[i]=argument[i+2];

ds_list_replace(argument[0],argument[1]+1,__array);