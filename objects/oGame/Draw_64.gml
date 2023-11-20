//draw health bar
bar = oPlayer.hp;
bar = approach(bar, oPlayer.hp, 10);
var pos = display_get_gui_width() / 2;
draw_sprite_ext(kill, -1, pos-2, 960, 540, 0.1, image_angle, c_red, image_alpha);
draw_sprite_ext(kill, -1, pos-2, 960, bar/2, 0.1, image_angle, c_lime, image_alpha);

draw_set_text(c_white,fixedsys, fa_left, fa_top);
draw_text(75, 50, "whatever's speed: " + string(oKill.spd));
draw_text(75, 80, string(oPlayer.hp) + " " + string(score));
draw_text(75, 90, "your speed: " + string(oPlayer.walksp));

if (oCamera.freecam)
{
    draw_text(75, 10, "Freecam on, use WASD to move.");
}

draw_set_text(c_white, clock, fa_center, fa_top);

var pos = display_get_gui_width() / 2;
if (seconds <= 9)
{
    draw_set_text(c_alert, clock, fa_center, fa_top);
    draw_text(pos, 0, "00 : 0" + string(seconds));
}
else
{
    draw_text(pos, 0, "00 : " + string(seconds));
}

 //for whoever reads this code, please forgive me for this
 //i'm sorry for what you'll have to see next, i really am.

var heartindex = 0;
var heartX = 35;

for (var i = 0; i < oPlayer.hp; i++)
{
    draw_sprite_ext(heart, heartindex, heartX, 40, 0.5, 0.5, 0, c_white, 1);
    heartX += 50;
}
