hitEnemy = choose(hitEnemy1, hitEnemy2, hitEnemy3, hitEnemy4)
audio_play_sound(hitEnemy, 1, false)

with (other)
    {
    myHealth -=5;
    }
    
instance_destroy()