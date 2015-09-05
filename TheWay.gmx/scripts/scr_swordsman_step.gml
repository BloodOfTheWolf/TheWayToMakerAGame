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
