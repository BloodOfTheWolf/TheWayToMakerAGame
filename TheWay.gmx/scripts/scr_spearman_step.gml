//Aggro range
WithinRange = distance_to_object(obj_player_placeholder) < 100;
//Attack Range
WithinAttackRange = distance_to_object(obj_player_placeholder) < 5;


//Move towards enemy when aggroed
if (WithinRange = true)
{
    if (obj_player_placeholder.x > x)
    {
        x += 4;
    }
    else
    {
        x -= 4;
    }
}
//Spearman attacks the player
if (WithinAttackRange = true)
{
    WithinRange = false;
    alarm[0] = 15;
    CanAttack = false;  
}
if (CanAttack) = true
{
    if (choose(0,1) = 1)
    {
    HighAttack = true;
    }
    else
    {
    MedAttack = true;
    } 
    CanAttack = false;
    alarm[1] = 15;
}
if (HighAttack = true)
{
    sprite_index = sprPlayerHighAR
}
    
if (MedAttack = true)
{
    sprite_index = sprPlayerLowAR
}


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
}
else
{
    onWall = false
}
x += hsp

//vertical collision

vsp += grav
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

//move (bens code, might need deleting. Stay tuned)
if instance_exists(closestWallID)
{
    if (closestWallID != 0)
    {
        if x > closestWallID.x
        {
            dir = -1
            hsp = dir * curSpeed
        }
        if x < closestWallID.x
        {
            dir = 1
            hsp = dir * curSpeed
        }
         //move_towards_point(closestDirtID.x+64,closestDirtID.y+96,moveSpeed)   
    }    
}
//Enemy Collision
if (place_meeting(x+hsp, y, obj_player_placeholder) && (WithinRange))
{
    while(!place_meeting(x+sign(hsp), y, obj_player_placeholder))
    {
        x += sign(hsp)
    }
        if (obj_player_placeholder.x > x)
        {
            x += 4;
        }
        else
        {
            x -= 4;
        }
}