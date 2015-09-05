// WARNING = NEEDS EDITING FOR PROPER TERMINOLOGY
/*
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
if (keyboard_check(ord('A')))&&(pAttacking = 0)&&(dir = 1)
{
    sprite_index = sprPlayerLowAR;
    lattack = true;
}
//player attacks right and high
if(keyboard_check(ord('D')))&&(pAttacking = 0)&&(dir = 1)
{
    sprite_index = sprPlayerHighAR;
    hattack = true;
}
//player attacks left and low
if (keyboard_check(ord('A')))&&(pAttacking = 0)&&(dir = -1)
{
    sprite_index = sprPlayerLowAL;
    lattack = true;
}
//player attacks left and high
if(keyboard_check(ord('D')))&&(pAttacking = 0)&&(dir = -1)
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