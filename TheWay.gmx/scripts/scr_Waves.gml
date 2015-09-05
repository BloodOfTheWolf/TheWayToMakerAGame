spacing = 64;

GoonX = room_width/2;
GoonY = -spacing;

GoonXX = -spacing;
GoonYY = room_height/4;

if (x = 1)
{    
    instance_create(GoonX, GoonY, Bad); 
}

if (x = 2)
{    
    instance_create(GoonX, GoonY, Bad); 
    instance_create(GoonX - spacing , GoonY -spacing , Bad);
    instance_create(GoonX + spacing , GoonY -spacing , Bad);    
}

if (x = 3)
{    
    instance_create(GoonXX + 400, GoonYY, Bad); 
    instance_create(GoonXX + 300, GoonYY -spacing , Bad);
    instance_create(GoonXX + 350 , GoonYY -spacing , Bad);    
}

if (x = 4)
{    
    instance_create(GoonX - (spacing*3), GoonY - (spacing*2), Bad);
    instance_create(GoonX - (spacing*1), GoonY - (spacing*2), Bad);    
    instance_create(GoonX + (spacing*1), GoonY - (spacing*2), Bad);       
    instance_create(GoonX + (spacing*3), GoonY - (spacing*2), Bad);
}