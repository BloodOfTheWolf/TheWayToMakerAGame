closestWallID = Wall

////PLAYER ANIMATIONS FOR ATTACK NEED TO BE PUT IN/////
////PLAYER JUMP SUPERCEDED BY PLAYER WALK ANIMATION/////
////NEED WALL JUMP ANIM, LOW ATTACK ANIM, AND ALL ////


////////move up///////
if onGround && y > obj_ground_placeholder.y
    {
        y = obj_ground_placeholder.y;
    }


////////die///////
if myHealth <=0
{
    room_restart()
}

///////////////////


if(isSlowed)
{
    // walking in mud/water code
}
else
    {curSpeed = moveSpeed}

//////////////////COMBAT//////////////////
//player attacks right and low
if (LoAtk) && (dir = 1) && (!State = 1)
{
    audio_stop_all()
    hattack = false
    lattack = true
    alarm[1] = 10
    hitbox = instance_create(x+100, y-150, obj_LatkVolume)
    lAtkSound = choose(lAttack1,lAttack2,lAttack3, lAttack4, lAttack5)
    swoosh = choose (swoosh1, swoosh2, swoosh3)
    audio_play_sound(swoosh, 1, false)
    audio_play_sound(lAtkSound, 1, false)
    image_index = 0
    image_speed = 0.5
    State = 1
}
//player attacks right and high
else if(HiAtk ) && (dir = 1) && (!State = 1)
{
    audio_stop_all()
    lattack = false
    hattack = true
    alarm[1] = 10
    hitbox = instance_create(x+100, y-200, obj_HatkVolume)
    hAtkSound = choose(hAttack1,hAttack2,hAttack3)
    swoosh = choose (swoosh1, swoosh2, swoosh3)
    audio_play_sound(swoosh, 1, false)
    audio_play_sound(hAtkSound, 1, false)
    image_index = 0
    image_speed = 0.5
    State = 1
}
//player attacks left and low
else if (LoAtk) && (dir = -1) && (!State = 1)
{
    audio_stop_all()
    hattack = false
    lattack = true
    alarm[1] = 10
    hitbox = instance_create(x-100, y-150, obj_LatkVolume)
    hitbox.image_xscale = -1;
    lAtkSound = choose(lAttack1,lAttack2,lAttack3, lAttack4, lAttack5)
    swoosh = choose (swoosh1, swoosh2, swoosh3)
    audio_play_sound(swoosh, 1, false)
    audio_play_sound(lAtkSound, 1, false)
    image_index = 0
    image_speed = 0.5
    State = 1
}
//player attacks left and high
else if(HiAtk) && (dir = -1) && (!State = 1)
{
    audio_stop_all()
    lattack = false
    hattack = true
    alarm[1] = 10
    hitbox = instance_create(x-100, y-200, obj_HatkVolume)
    hitbox.image_xscale = -1;
    hAtkSound = choose(hAttack1,hAttack2,hAttack3)
    swoosh = choose (swoosh1, swoosh2, swoosh3)
    audio_play_sound(swoosh, 1, false)
    audio_play_sound(hAtkSound, 1, false)
    image_index = 0
    image_speed = 0.5
    State = 1
}

///////////////////////////////////////////////////////////////////////////
/////////////////////////////////ANIMATION/////////////////////////////////
//high attack animation
if (lattack)
{
    sprite_index = loatkAnim
    if(image_index > 3)
    {
        lattack = false
        State = 0
        alarm[0] = 0
    }
}
//low attack animation
else if(hattack)
{
    sprite_index = hiatkAnim
    if(image_index > 3)
    {
        hattack = false
        State = 0
        alarm[0] = 0
    }
}
else if(State != 0)
    {State = 0}

////idle animation///
if (State = 0) && (onGround) && hsp = 0
{
    sprite_index = idleAnim;
    image_speed = 0.25;
}
////jump animation////
else if (!onGround) && State = 0
{
    image_index = 0
    sprite_index = runAnim;
    image_speed = 0;    
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
    hsp = 0
    onWall = true
    while(!place_meeting(x+sign(hsp), y, Wall))
    {
        x += sign(hsp)
    }
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
}
