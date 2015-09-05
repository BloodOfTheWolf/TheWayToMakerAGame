MOVELEFT = keyboard_check(vk_left) || keyboard_check(ord("A"));
MOVERIGHT = keyboard_check(vk_right)  || keyboard_check(ord("D"));

itsMe = object_index

//Spawn more BG
if !place_meeting(x-myWidth, y, itsMe)
    {
    /*Child =*/ instance_create(x-myWidth, y, itsMe)
    }
    
if !place_meeting(x+myWidth, y, itsMe)
    {
    /*Child =*/ instance_create(x+myWidth, y, itsMe)
    }

//Clean up
if (x > room_width + sprite_width/2) || (x < -(room_width + sprite_width/2))
    {
    with (self)
        {
        instance_destroy()
        }
    }
//Movement        
if MOVELEFT
    {
    x-=mySpeed
    }
else
    {
    x-=0
    }
if MOVERIGHT
    {
    x+=mySpeed
    }
else
    {
    x-=0
    }