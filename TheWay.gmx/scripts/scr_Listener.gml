if keyboard_check_pressed (vk_enter)
{
Control.x += 1
}

if keyboard_check_pressed (vk_space)
{
newPawn = instance_create(x+350,y-sprite_height/2,Bad);
        newPawn.direction = -90
        Control.pawns += 1
}