///bezier_create(dimension)
/*
    Creates a new bezier-based path with a specified dimension. The dimension is the number
    of values per point.
    For example, a 3D path would have 3 dimensions. One for x, y, and z.
    You could also use dimensions for other things, for example, a 3D track could use
    5 dimensions: x, y, z, speed, bank
    
    Argument0:  The dimension of the path
    Returns:    Bezier path id
 */
var __id=ds_list_create();
ds_list_add(__id,argument0);
return __id;