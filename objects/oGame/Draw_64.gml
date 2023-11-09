draw_set_text(c_white,fixedsys, fa_left, fa_top);
draw_text(75,50,"whatever's speed: " + string(oKill.spd))

draw_text(75,90,"your speed: " + string(oPlayer.walksp))
if oCamera.freecam
{
draw_text(75,10,"Freecam on, use WASD to move.")
}

draw_set_text(c_white,clock,fa_center,fa_top);

var pos = display_get_gui_width() / 2
var timestr = "00 : " + (seconds < 10 ? "0" : "") + string(seconds)
if (seconds <= 10)
{
	draw_set_text(c_alert,clock,fa_center,fa_top);
	draw_text(pos,0,timestr);
}
else
{
	draw_text(pos,0,timestr);
}



















