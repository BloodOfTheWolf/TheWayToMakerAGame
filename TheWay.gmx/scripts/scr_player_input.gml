moveLeft = keyboard_check(vk_left)
moveRight = keyboard_check(vk_right)
moveJump = keyboard_check_pressed(vk_up)
//attackMid = keyboard_check_pressed()
//attackHigh = 

if (moveJump) && (onWall) && (!onGround) && (curWallJump != 0) && (prevWallJump != dir)
{
        vsp = -wallSpeed
        prevWallJump = dir
        dir = -dir
        hsp = dir * moveSpeed
        curWallJump -= 1
        afterWallJump = true
        alarm[0] = TminusAfterWallJump // the timer on the afterWallJump. Refer to the obj_player for the alarm results
}
else if ((moveRight) && (!afterWallJump)) || (afterWallJump && dir = 1) // moving right
{
    dir = 1
    if(hsp < curSpeed) // if not at max speed, accelerate
    {
        hsp += dir * accelSpeed
    }
    else // if at maxspeed, stay at maxspeed
    {
        hsp = dir * curSpeed
    }
}
else if ((moveLeft) && (!afterWallJump)) || (afterWallJump && dir = -1) // moving left
{
    dir = -1
    if(hsp > -curSpeed) // if not at max speed, accelerate
    {
        hsp += dir * accelSpeed
    }
    else // if at maxspeed, stay at maxspeed
    {
        hsp = dir * curSpeed
    }
}
else if(hsp > 1 || hsp < -1)
{
    hsp *= decelSpeed
}
else
{
    hsp = 0
}

/*if (vsp < -maxJumpSpeed) // if at max upward vertical speed, stay at maxspeed
{
    vsp = -maxJumpSpeed
    hsp *= -1
    dir *= -1
}*/
if (moveJump) && (onGround)
{
    vsp -= jumpSpeed
    onGround = false
}
