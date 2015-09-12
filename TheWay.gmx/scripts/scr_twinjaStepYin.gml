///////////////////////////////////////////////////////////////
////////// HAS KUNAIS, CHUCK THEM /////////////////////////////

///////////////////////////////////////////////////////////////
////////// OUT OF KUNAIS, GOING TOWARDS YANG ////////////////// 
if (kunaiCount <= 1)
{
    //move_towards_point(x,y, obj_twinjaYang)
    if(Yang.x > x - sprite_width && obj_twinjaYang.x < x + sprite_width)  // if Yin is touching Yang
    {
        hsp = 0
        if (!obj_twinjaYang.busy)
        {
            // INSERT "GET KUNAI" CODE
        }
    }
    else
    {
        if (YangBetween) || (YinBetween)
        {
            if x > Yang.x // check player position
                {dir = -1}
            else
                {dir = 1}
        }
        else
        {
            if x > player.x
                {dir = 1}
            else
                {dir = -1}
        }
        if(abs(hsp) > abs(curSpeed)) // if not at max speed, accelerate
        {
            hsp += dir * accelSpeed
        }
        else // if at maxspeed, stay at maxspeed
        {
            hsp = dir * curSpeed
        }
    }
}
else
    {hsp = 0}