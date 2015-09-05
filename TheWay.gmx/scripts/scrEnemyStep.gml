//enemy high block fail sword
if (ehblock = false)&&(objPlayer.hattack)
{
ehit = true;
}
//mid block fail sword
/*
if (emblock != mattack)
{
ehit = true;
}*/
//low block fail sword
if (elblock = false)&&(objPlayer.lattack)
{
ehit = true;
}
//enemy damage taken
if(ehit == true)
{
ehp--;
ehit = false;
}
//enemy death set from damage
if(ehp <= 0)
{
    //need to put in sprite for death, and at the final image_index...
    instance_destroy();
}