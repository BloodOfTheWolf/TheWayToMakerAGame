if (x > view_xview[0]) && (x < view_xview[0] + 1920)
{
    if (attackHigh = true)
    {
        sprite_index = sprGoombaAtkHi;
        if (image_index = 4)
        {
            //player damage//
            obj_player_placeholder.myHealth -= 1;
            //player damage//
            sprite_index = sprGoombaIdle;
            attackType = 0
            attackHigh = false;
        }
    }

    if (attackLow = true)
    {
        //player damage//
        obj_player_placeholder.myHealth -= 1;
        //player damage//
        sprite_index = sprGoombaAtkLo;
        if (image_index = 4)
        {
            sprite_index = sprGoombaIdle;
            attackType = 0
            attackLow = false;
        }
    }
    
    if (nearPlayer = false)
    {
        sprite_index = sprGoombaRun;
        x -= 8;
    }

    if (distance_to_object(obj_player_placeholder)<32) && (attackType = 0)
    {
        nearPlayer = true;
        attackType = random_range(1,2);
    }
    
    if (attackType <= 1) && (attackType > 0)
    {
        attackHigh = true;
    }
    if (attackType >1)
    {
        attackLow = true;
    }
}
