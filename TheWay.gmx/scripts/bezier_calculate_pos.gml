///bezier_calculate_pos(id, pos [0..1])
/*
    Calculates the values for the bezier at the specified position between 0 and 1.
    This only returns the n-dimensional positional values for that specified area.
    Returns an array of values corresponding to the number of dimensions in the curve.
    
    Argument0:  Bezier path id
    Argument1:  Position in path to calculate between 0 and 1
    Returns:    Array of values, dependant on the dimension of the path
 */
 
/////Formula: sum(i=0, n){bin(n i) * (1-t)^(n-i) * t^i * P_i * w_i}

//Error Checking:
if (ds_list_size(argument0)<=2)
    show_error("Not enough points in bezier curve to calculate position.",true);

//Setup the array to be returned:
var __array;
for (var i=argument0[| 0]-1;i>=0; --i)
    __array[i]=0;
    
//Setup easy-access variables:
var n=ds_list_size(argument0)-2;// Number of points.
                                // Subtract 1 because we hold the dimension
                                // Subtract 1 because we want to loop INCLUSIVELY.
var d=argument0[| 0];// Dimensions.
var t=argument1;// Position on path
    

//Perform the summation:
for (var i=0; i<=n; ++i)
{
    //Perform for each dimension:
    for (var p=0; p<d; ++p)
    {
        var __bc=__binomialCoef(n,i); // Binomial coefficient
        var __ot=power(1-t,n-i); // (1-t) ^ n-i
        var __t=power(t,i); // t^i
        var __pt=argument0[| i+1]; // Get point array
        var __w=__pt[0]; // Get point weight
        var __point=__pt[p+1]; // Get point value for dimension
        __array[p]+=__bc * __ot * __t * __point * __w; // Calculate position
    }
}
return __array;