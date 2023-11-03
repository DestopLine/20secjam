show_debug_overlay(debug)
if (keyboard_check_pressed(vk_f3)) {
    debug = !debug;
}
switch (instance_exists(oPlayer))
{
	case true: default:
	x = oPlayer.x
    y = oPlayer.y
	break;
	case false:
	x = x
	y = y
	break;
}

/*if(keyboard_check(vk_up) || keyboard_check(vk_down)){
	var zoom_amount = global.cam1.zoom_amount;
	
	if(keyboard_check(vk_down)) zoom_amount-=0.05
	if(keyboard_check(vk_up)) zoom_amount+=0.05
	
	zoom_amount = clamp(zoom_amount,0.1,2);
	global.cam1.zoom(zoom_amount,0);
}
*/
/* switch (keyboard_key)
{
case ord("S"):
y += 225;
break;

case ord("E"):
x += 300;
break;

case ord("Q"):
x -= 300;
break;
}

	
	
	
	
	
	
	

