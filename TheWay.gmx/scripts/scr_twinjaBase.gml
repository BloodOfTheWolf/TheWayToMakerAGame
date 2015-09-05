closestWallID = Wall
vsp += grav
curSpeed = moveSpeed

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
vsp+=grav;
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