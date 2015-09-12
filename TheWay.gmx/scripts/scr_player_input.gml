moveUp = keyboard_check(vk_up)
moveDown = keyboard_check(vk_down)
moveLeft = keyboard_check(vk_left)
moveRight = keyboard_check(vk_right)
moveJump = keyboard_check_pressed(vk_space)

Attack = keyboard_check_pressed(ord('A'))
Block = keyboard_check_pressed(ord('S'))



////idle animation///
if hsp=0
    {
        image_index = 0;
        image_speed = 0;
    }

////jump animation////
if vsp>0 || vsp<0
    {
        image_index = 0;
        image_speed = 0;
        
    }

if(State = 0)
{
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
            if hsp>0 
                {
                ///walkrightanimation///
                image_speed = 0.25; 
                image_xscale = 1;
                
                if image_index = 3
                    {
                    image_index = 0
                    }
                }
        }
        else // if at maxspeed, stay at maxspeed
        {
            hsp = dir * curSpeed
            if hsp>0 
                {
                ///walkrightanimation///
                image_speed = 0.25;
                image_xscale = 1;
                
                if image_index = 3
                    {
                    image_index = 0
                    }
                    
                }
        }
    }
    else if ((moveLeft) && (!afterWallJump)) || (afterWallJump && dir = -1) // moving left
    {
        dir = -1
        if(hsp > -curSpeed) // if not at max speed, accelerate
        {
            hsp += dir * accelSpeed
            if hsp<0 
                {
                ///walkleftanimation///
                image_speed = 0.25;
                image_xscale = -1;
                
                if image_index = 3
                    {
                    image_index = 0
                    }
                    
                }
        }
        else // if at maxspeed, stay at maxspeed
        {
            hsp = dir * curSpeed
            if hsp<0 
                {
                ///walkleftanimation///
                image_speed = 0.25;
                image_xscale = -1;
                
                if image_index = 3
                    {
                    image_index = 0
                    }
                
                }
        }
    }
    else if(hsp > 1 || hsp < -1)
    {
        hsp *= decelSpeed
        if hsp = 0 
            {
                if dir = 1 
                    {
                    //idleright//
                    image_speed = 0; image_index = 0
                    }
                if dir = -1 
                    //idleleft//
                    {
                    image_speed = -0; image_index = 0
                    }
            }
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
        jumpSound = choose(Jump1,Jump2,Jump3)
        audio_play_sound(jumpSound, 3, false)
        vsp -= jumpSpeed
        onGround = false
    }
}