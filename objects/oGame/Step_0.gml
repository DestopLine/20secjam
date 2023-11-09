//make rainbow
c_rainbow = make_color_hsv ((current_time / room_speed) mod 255,255,255);
c_alert = make_color_rgb((current_time / room_speed*60) % 255, 0, 0);
if started
{
timer--
 //turn frames into seconds
	 if (timer % 60 == 0) 
		{
		 seconds -= 1;
		}
}	





























