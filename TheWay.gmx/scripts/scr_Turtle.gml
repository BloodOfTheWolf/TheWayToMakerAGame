if (place_meeting(x+100, y, Player))
{
effect_create_above(ef_ellipse,x,y,100,c_yellow);

}

if (place_meeting(x-100, y, Player))
{

effect_create_above(ef_ellipse,x,y,100,c_yellow);
image_speed = .20;
instance_change(obj_Oar,false);
}