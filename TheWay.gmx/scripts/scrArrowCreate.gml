startY = y;
targetY = obj_player_placeholder.y;
startX = x;
targetX = obj_player_placeholder.x;
fullX = point_distance(startX, startY, targetX, targetY);
midpointX = fullX/2 + obj_player_placeholder.x;
midpointY = y - 200;
onAscent = true;
if (obj_player_placeholder.x > x)
{
    firedDirection = 1;
}
else
{
    firedDirection = -1;
}