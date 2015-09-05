///bezier_point_add(id, weight, value 1, value 2, ...)
/*
    Adds a new point to the specified bezier path. Takes a variable amount of arguments,
    depending on the dimension of the bezier path. 
    
    Argument0:  Id of the bezier path
    Argument1:  The weight of that point, normally set to 1.
    Argument2 - ...: The value of that dimension for that point
    Returns:    N/A
 */
 
var __id=argument[0],
    __array;
for (var i=argument_count-1;i>1;--i)
    __array[i-1]=argument[i];
__array[0]=argument[1];
ds_list_add(argument[0],__array);