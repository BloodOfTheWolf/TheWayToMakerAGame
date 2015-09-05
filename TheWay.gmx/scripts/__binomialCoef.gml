//__binomialCoef(top, bottom)
/*
    Calculates the binomial coefficient of the two given values.
 */
var __n=argument0, __i=argument1;
var __value=__factorial(__n);
__value/=(__factorial(__i) * __factorial(__n-__i));

return __value;