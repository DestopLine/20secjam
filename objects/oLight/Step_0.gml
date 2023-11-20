if (instance_exists(oPlayer) && mainlight)
{
    x = oPlayer.x;
    y = oPlayer.y;
}

if (oGame.started && instance_exists(oKill) && lavalight)
{
    x = oKill.x - 420;
    y = oKill.y;
}

if (follow)
{
    x = followho.x;
    y = followho.y;
}
