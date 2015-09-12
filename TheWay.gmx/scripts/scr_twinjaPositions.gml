/// Figure out position compared to player && Yang ///

if (abs(Yang.x - x) > abs(player.x - x)) // the player is in between Yin and Yang!! Get away!!
{
    PlayerBetween = true
    YangBetween = false
    YinBetween = false
}
else if (abs(player.x - Yang.x) > abs(player.x - x)) // Yang is in between Yin and player. Sall good in the hood
{
    PlayerBetween = false
    YangBetween = true
    YinBetween = false
}
else if (abs(player.x - x) > abs(Yang.x - x)) // Yin is between Yang and Player. Move behind Yang
{
    PlayerBetween = false
    YangBetween = false
    YinBetween = true
}