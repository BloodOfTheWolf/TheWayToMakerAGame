image_angle = direction;
if (onAscent = true)
{
    move_towards_point(midpointX, midpointY, 14);
    if (firedDirection = 1)
    {
        if (x > midpointX)
        {
            onAscent = false;
        }
    }
    if (firedDirection = -1)
    {
        if (x < midpointX)
        {
            onAscent = false;
        }
    }
}
else
{
    move_towards_point(targetX, targetY, 16);
}