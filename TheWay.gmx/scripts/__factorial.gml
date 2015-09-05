//__factorial(value)
/*
    Calculates a factorial of argument0 and returns the value.
    Must be positive.
 */
 
if (argument0 == 0)
    return 1;

var __val=1;
for (var i=2;i<=argument0;++i)
    __val*=i;
    
return __val;