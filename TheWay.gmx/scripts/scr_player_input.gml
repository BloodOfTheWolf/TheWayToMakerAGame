moveUp = keyboard_check(vk_up)
moveDown = keyboard_check(vk_down)
moveLeft = keyboard_check(vk_left)
moveRight = keyboard_check(vk_right)
moveJump = keyboard_check_pressed(vk_space)

HiAtk = keyboard_check_pressed(ord('A'))
LoAtk = keyboard_check_pressed(ord('S'))


/// Wall Jumping ///
if (moveJump) && (onWall) && (!onGround) && (curWallJump != 0) && (prevWallJump != dir) && (State = 0)
{
        vsp = -wallSpeed
        prevWallJump = dir
        dir = -dir
        hsp = dir * moveSpeed
        curWallJump -= 1
        afterWallJump = true
        alarm[0] = TminusAfterWallJump // the timer on the afterWallJump. Refer to the obj_player for the alarm results
}
/// Jumping ///
else if (moveJump) && (onGround)
{
    jumpSound = choose(Jump1,Jump2,Jump3)
    audio_play_sound(jumpSound, 3, false)
    vsp -= jumpSpeed
    onGround = false
}
/// Moving Right ///
else if ((moveRight) && (!afterWallJump)) || (afterWallJump && dir = 1)
{  
    sprite_index = runAnim
    dir = 1
    if(hsp < curSpeed) // if not at max speed, accelerate
    {
        hsp += dir * accelSpeed
        if (hsp > 0) && (State = 0)
        {
            image_speed = 0.15;
            image_xscale = 1;
        }
    }
    else // if at maxspeed, stay at maxspeed
    {
        hsp = dir * curSpeed
        if (hsp > 0)  && (State = 0)
        {
            image_speed = 0.25;
            image_xscale = 1;
        }
    }
}
/// Moving Left ///
else if ((moveLeft) && (!afterWallJump)) || (afterWallJump && dir = -1)
{
    sprite_index = runAnim
    dir = -1
    if(hsp > curSpeed) // if not at max speed, accelerate
    {
        hsp += dir * accelSpeed
        if (hsp < 0) && (State = 0)
        {
            image_speed = 0.15;
            image_xscale = -1;
        }
    }
    else // if at maxspeed, stay at maxspeed
    {
        hsp = dir * curSpeed
        if (hsp < 0) && (State = 0)
        {
            image_speed = 0.25;
            image_xscale = -1;
        }
    }
}
///Deceleration///
else if(hsp > 1 || hsp < -1)
{
    hsp *= decelSpeed
}
else
{
    hsp = 0
}
