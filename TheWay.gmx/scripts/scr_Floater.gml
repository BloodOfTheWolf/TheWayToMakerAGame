if Sink = true
{
if Sinking = true
{
y += sinkSpeed;
//gravity = .2
}
if Sinking = false
{
    y -= riseSpeed;
}
}
if (place_meeting(x, y, obj_limiter) && Sinking = false)
{
Sink = false;
//gravity = 0
}
if (place_meeting(x, y -5, obj_player_placeholder))
{ 
Sinking = true
effect_create_above(ef_ellipse,x,y,100,c_lime);
}
if (place_meeting(x, y, obj_ground_placeholder))
{ 
//gravity = - 1
Sinking = false
}