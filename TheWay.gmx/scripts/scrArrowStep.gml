image_angle = direction;
if (arrowDirection = 0)
{
    x += 16;
}
else
{
    x -= 16;
}
if (place_meeting(x, y, obj_player_placeholder))
{
    obj_player_placeholder.image_blend = c_blue;
    instance_destroy();
}
if (x < view_xview[0]) || (x > room_width)
{
    instance_destroy();
}
