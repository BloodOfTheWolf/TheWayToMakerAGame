hattack = true;
lattack = true;

if instance_exists(obj_attackVolume)
    {
    with (obj_attackVolume)
        {
        instance_destroy()
        }
    }
