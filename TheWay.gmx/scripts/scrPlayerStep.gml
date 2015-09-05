//cycle through attack and block state by pressing the space bar
if (keyboard_check_pressed(vk_space))
{
    pAttacking += 1;
    if (pAttacking > 1)
    {
        pAttacking = 0;
    }
}
//if the player isn't doing anything, either switch to walk or idle them
if (!keyboard_check(ord('A'))) && (!keyboard_check(ord('D')))
{
    hattack = false;
    lattack = false;
    if (keyboard_check(vk_right))
    {
        playerFacing = 1;
        sprite_index = sprPlayerWalkRight;
    }
    else if (keyboard_check(vk_left))
    {
        playerFacing = 0;
        sprite_index = sprPlayerWalkLeft;
    }
    else
    {
        sprite_index = sprPlayerIdle;
    }
}
//player attacks right and low
if (keyboard_check(ord('A')))&&(pAttacking = 0)&&(playerFacing = 1)
{
    sprite_index = sprPlayerLowAR;
    lattack = true;
}
//player attacks right and high
if(keyboard_check(ord('D')))&&(pAttacking = 0)&&(playerFacing = 1)
{
    sprite_index = sprPlayerHighAR;
    hattack = true;
}
//player attacks left and low
if (keyboard_check(ord('A')))&&(pAttacking = 0)&&(playerFacing = 0)
{
    sprite_index = sprPlayerLowAL;
    lattack = true;
}
//player attacks left and high
if(keyboard_check(ord('D')))&&(pAttacking = 0)&&(playerFacing = 0)
{
    sprite_index = sprPlayerHighAL;
    hattack = true;
}

//player blocks right and low
if (keyboard_check(ord('A')))&&(pAttacking = 1)&&(playerFacing = 1)
{
    sprite_index = sprPlayerLowBR;
}
//player blocks right and high
if(keyboard_check(ord('D')))&&(pAttacking = 1)&&(playerFacing = 1)
{
    sprite_index = sprPlayerHighBR;
}
//player blocks left and low
if (keyboard_check(ord('A')))&&(pAttacking = 1)&&(playerFacing = 0)
{
    sprite_index = sprPlayerLowBL;
}
//player blocks left and high
if(keyboard_check(ord('D')))&&(pAttacking = 1)&&(playerFacing = 0)
{
    sprite_index = sprPlayerHighBL;
}

/*bool.khit = false;
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
}*/