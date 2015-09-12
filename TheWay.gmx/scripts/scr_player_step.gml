closestWallID = Wall

////PLAYER ANIMATIONS FOR ATTACK NEED TO BE PUT IN/////
////PLAYER JUMP SUPERCEDED BY PLAYER WALK ANIMATION/////
////NEED WALL JUMP ANIM, LOW ATTACK ANIM, AND ALL ////

if(isSlowed)
{
    // walking in mud/water code
}
else
{
    curSpeed = moveSpeed
}

//////////////////COMBAT

//cycle through attack and block state by pressing the space bar
if (Attack)
{
    State = 1;
}
else if (Block)
{
    State = 2;
}
else
{
    State = 0;
}

//player attacks right and low
if (keyboard_check_pressed(ord('A')))/*&&(pAttacking = 0)*/&&(dir = 1)
{
    hattack = false
    alarm[1] = 15
    instance_create(x+100, y-200, obj_attackVolume)
    
    lAtkSound = choose(lAttack1,lAttack2,lAttack3, lAttack4, lAttack5)
    //sprite_index = sprPlayerLowAR;
    audio_play_sound(lAtkSound, 1, false)
    lattack = true;
    image_index = 4;
     
}
//player attacks right and high
if(keyboard_check_pressed(ord('D')))/*&&(pAttacking = 0)*/&&(dir = 1)
{

    hattack = false
    alarm[1] = 15
    instance_create(x+100, y-200, obj_attackVolume)
  
    hAtkSound = choose(hAttack1,hAttack2,hAttack3)
    //sprite_index = sprPlayerHighAR;
    audio_play_sound(hAtkSound, 1, false)
    hattack = true;
    image_index = 4;
}
//player attacks left and low
if (keyboard_check_pressed(ord('A')))/*&&(pAttacking = 0)*/&&(dir = -1)
{

    lattack = false
    alarm[1] = 15
    instance_create(x-100, y-200, obj_attackVolume)
        with (obj_attackVolume)
            {
            image_xscale = -1;
            }
            
    lAtkSound = choose(lAttack1,lAttack2,lAttack3, lAttack4, lAttack5)
    //sprite_index = sprPlayerLowAL;
    audio_play_sound(lAtkSound, 1, false)
    lattack = true;
    image_index = 4;
}
//player attacks left and high
if(keyboard_check_pressed(ord('D'))) && hattack /*&&(pAttacking = 0)*/&&(dir = -1)
{
    hattack = false
    alarm[1] = 15
    instance_create(x-100, y-200, obj_attackVolume)
        with (obj_attackVolume)
            {
            image_xscale = -1;
            }
    hAtkSound = choose(hAttack1,hAttack2,hAttack3)
    //sprite_index = sprPlayerHighAL;
    audio_play_sound(hAtkSound, 1, false)
    image_index = 4;
    
}

if (image_index >= 4)
{
    image_index += 1;
    if (image_index = 7)
    {
        image_index = 0;
    }
}

//player blocks right and low
if (keyboard_check(ord('A')))/*&&(pAttacking = 1)*/&&(dir = 1)
{
    //sprite_index = sprPlayerLowBR;
}
//player blocks right and high
if(keyboard_check(ord('D')))/*&&(pAttacking = 1)*/&&(dir = 1)
{
    //sprite_index = sprPlayerHighBR;
}
//player blocks left and low
if (keyboard_check(ord('A')))/*&&(pAttacking = 1)*/&&(dir = 0)
{
    //sprite_index = sprPlayerLowBL;
}
//player blocks left and high
if(keyboard_check(ord('D')))/*&&(pAttacking = 1)*/&&(dir = 0)
{
    //sprite_index = sprPlayerHighBL;
}
/*
bool.khit = false;
bool.ahit = false;

//high block fail sword
if (hblock != ehattack)
{
khit = true;
}

//mid block fail sword
//if (mblock != emattack)
{
khit = true;
}

//low block fail sword
if (lblock != elattack)
{
khit = true;
}
//arrow block fail
if (hblock != aattack)
{
ahit = true;
}
//damage taken sword
if(khit == true)
{
php -= 2;
khit = false;
}
//damage taken arrow
if(ahit == true)
{
php--;
ahit = false;
}
//death variable set from damage
if(php <= 0)
{
death = true;
}
*/


///////////////////////////////////////////////////////////////////////////
/////////////////////////////////COLLISION/////////////////////////////////
//horizontal collision

if (place_meeting(x+hsp, y, Wall))
{
    while(!place_meeting(x+sign(hsp), y, Wall))
    {
        x += sign(hsp)
    }
    hsp = 0
    onWall = true
    if onWall = true && onGround = false
    {
    gruntSound = choose(Grunt1,Grunt2,Grunt3)
    audio_play_sound(gruntSound, 2, false)
    }
    
}
else
{
    onWall = false
}
x += hsp

//vertical collision

vsp += grav // player is pulled down by gravity
if (place_meeting(x,y+vsp, Wall))
{
    while(!place_meeting(x,y+sign(vsp), Wall))
    {
        y += sign(vsp)
    }
    vsp = 0
    onGround = true
}
y += vsp

if(onGround)
{
    curWallJump = multiWallJump
    prevWallJump= 0
    canWallJump = false
    afterWallJump = false
}
   
//wall target 
with (Wall)
{
    //if (if(point_directionWallSelect)
    //{
        if (distance_to_point(obj_player_placeholder.x, obj_player_placeholder.y) < obj_player_placeholder.closestWallDistance)
        {
            closestWallID = self.id;
            closestWallDistance = distance_to_point(obj_player_placeholder.x, obj_player_placeholder.y);
        }
        else
        {
            closestWallID = 0
            closestWallDistance = 10000
        }
    //}
}
