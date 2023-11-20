if (hp <= 0) 
{
    restart();
}

var touchingLeft = collision_line(x, y, x - 40, y, oCorrection, false, true);
var touchingRight = collision_line(x, y, x + 40, y, oCorrection, false, true);
var touchingUp = collision_line(x, y, x, y - 40, oCorrection, false, true);
var touchingDown = collision_line(x, y, x, y + 40, oCorrection, false, true);
touchingLava = collision_line(x, y, x, y + 50, oKill, false, true);

if (oGame.timer <= 0)
{
    hp = 0;
}

//get input
if (hascontrol)
{
    key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
    key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
    key_up = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"));
    key_down = keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"));
}
else
{
    key_right = 0;
    key_left = 0;
    key_up = 0;
    key_down = 0;
}

if (!oCamera.freecam)
{
    //calculate movement
    var move = key_right - key_left;
    var ymove = key_up - key_down;

    hsp = (move * walksp);
    vsp = (vsp + grv);
}

//i KNOW this should be a switch, ill fix it later.
//do the pata pata
var rotaspeed = 50;
if (key_up)
{
    image_angle = 360;

    if (touchingUp != noone)
    {
        x = touchingUp.x;
        y = touchingUp.y;
    }

    vsp = -walksp;    
}

if (key_down)
{		
    image_angle = 180;
    facing = "down";
    if (touchingDown != noone)
    {
        x = touchingDown.x;
        y = touchingDown.y;
    }

    vsp = walksp;    

}

if (key_left)
{		
    image_angle = 90;	
    facing = "left";
    if (touchingLeft != noone)
    {
        x = touchingLeft.x;
        y = touchingLeft.y;
    }

}

if (key_right)
{		
    image_angle = -90;
    facing = "right";
    if (touchingRight != noone)
    {
        x = touchingRight.x;
        y = touchingRight.y;
    }
}


//horizontal collision
if (place_meeting(x + hsp, y, oWall))
{
    while (!place_meeting(x + sign(hsp), y, oWall))
    {
        x = x+sign(hsp);
    }
    hsp = 0;
}

x = x + hsp;


//vertical movement
if (place_meeting(x, y + vsp, oWall))
{
    while (!place_meeting(x, y + sign(vsp), oWall))
    {
        y = y + sign(vsp);
    }
    vsp = 0;
}

y = y + vsp;

if (touchingLava != noone && !wet && vsp !=0)
{	
    audio_play_sound(splashin, 1, false);
    splashp();
    wet = true;
}

if (touchingLava = noone and wet)
{	
    audio_play_sound(splashout, 1, false);
    wet = false;
    splashp();
}
    
if (iframe)
{
    if (time < room_speed * 0.7)
    {
        time++;
    }
    else
    {
        iframe = false;
        time = 0;
    }
}
