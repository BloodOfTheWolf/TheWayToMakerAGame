if (enemyHP <= 0)
{
    //sprite_index = deathAnim;
    //if (image_index > the maximum)
    //{
        instance_destroy();
    //}
}
else
{
if (arrowReady = true) && (distance_to_object(obj_player_placeholder)>600) && (distance_to_object(obj_player_placeholder)<1000)
{
        instance_create(x, y, objArrow);
        arrowReady = false;
}
else
{
    if (distance_to_object(obj_player_placeholder)<1000)
    {
    timer += room_speed * 1/30;
    if (x >= obj_player_placeholder.x)
    {
        image_xscale = 1;
        x += 4;
    }
    if (x <= obj_player_placeholder.x)
    {
        image_xscale = -1;
        x -= 4;
    }
    }
}
if (timer >= 30)
{
    arrowReady = true;
    timer = 0;
}
}
