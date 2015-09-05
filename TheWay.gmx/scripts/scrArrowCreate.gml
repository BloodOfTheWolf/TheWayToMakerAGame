startY = y;
arrowLaunch = true;
playerX = obj_player_placeholder.x;
if (playerX > x)
{
    arrowDirection = 0;
}
else
{
    image_xscale = -1;
    arrowDirection = 1;
}
