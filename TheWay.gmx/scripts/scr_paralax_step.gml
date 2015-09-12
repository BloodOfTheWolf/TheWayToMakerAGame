background_x[0] = view_xview[0] * farBGSpeed
background_x[1] = view_xview[0] * midBGSpeed
background_x[2] = view_xview[0] * nearBGSpeed

//Movement
/*Movement = obj_player_placeholder.hsp*Speed

//Cycle on/off screen
if (x > room_width + Width)
{
    x = -Width - Movement 
}
else if (x < -Width)
{
    x = room_width + Width - Movement 
}
else
{
    x -= Movement 
}