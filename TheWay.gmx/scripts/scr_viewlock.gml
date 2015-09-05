/* Scr_screen_lock_trigger_collision
------------------------------------------------------------------------------

//Turns trigger off so it can only trigger once
other.canBeTriggered = false;

/*
Sets view target to trigger (Presumably placed in center of boss room)
then sets the border to outside the viewable range

******IF YOU WANT TO CHANGE THIS*******
Change the view_object to an object in the center of the room, this will position
the view properly to view the entire room

******WHEN READY TO SET BACK TO PLAYER*******
When the boss dies, replicate the 'view_object' code line in the boss death
and have it set it to 'obj_player'
set 
*/
/*
view_vborder[0] = 0;
view_hborder[0] = 0;
view_object[0] = self;

screenLocked = true;


Scr_player_step
---------------------------------------------------------------------------
if (screenLocked = true)
{
    if (x < view_xview[0])
    {
        x = view_xview[0];
    }
    if (x > view_xview[0] + 1024)
    {
        x = view_xview[0] + 1024;
    }
}