closestWallID = Wall
vsp += grav

if(isSlowed)
{
    // walking in mud/water code
}
else
{
    curSpeed = moveSpeed
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
/*else
{
    dir = 0
}
*/    
