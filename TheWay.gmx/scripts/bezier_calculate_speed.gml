///bezier_calculate_speed(id, pos [0..1], speed)
/*
    Will calculate an appropriate speed for this segment of the path.
    Because bezier curve distance is not equal all around the curve, this
    will do a rough calculation of how fast the specified segment should be
    based on the initial segment.
    
    NOTE: This is not perfect, and is just an estimate. It should work for
          most general purposes.
    
    Argument0:  id of bezier path
    Argument1:  Position on path between 0 and 1
    Argument2:  Speed desired at position
    Returns:    Actual speed that should be used
 */
 
//Error Checking:
if (ds_list_size(argument0)<=2)
    show_error("Not enough points in bezier curve to calculate position.",true);
 
var __speed=argument2,
    __perc=1,
    __array1,
    __array2,
    __segSize=0.00001,
    __dis=0,
    __disCur=0;
    
//Calculate the initial segment:
__array1=bezier_calculate_pos(argument0,0);
__array2=bezier_calculate_pos(argument0,__segSize);
for (var i=0;i<argument0[| 0]; ++i)
    __dis+=sqr(__array1[i]-__array2[i]);
__dis=sqrt(__dis);
while (__dis==0)
{
    __segSize*=10;
    __array1=bezier_calculate_pos(argument0,0);
    __array2=bezier_calculate_pos(argument0,__segSize);
    for (var i=0;i<argument0[| 0]; ++i)
        __dis+=sqr(__array1[i]-__array2[i]);
    __dis=sqrt(__dis);
}

//Calculate the specified segment:
__array1=bezier_calculate_pos(argument0,argument1);
__array2=bezier_calculate_pos(argument0,argument1+__segSize);
for (var i=0; i<argument0[| 0]; ++i)
    __disCur+=sqr(__array1[i]-__array2[i]);
__disCur=sqrt(__disCur);

//Calculate speed:
return __speed*(__dis/__disCur);