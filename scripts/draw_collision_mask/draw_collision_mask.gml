
function draw_collision_mask()
{
	
	if (oCamera.debug)
	{
	visible = true;
	draw_set_alpha(1);
	draw_rectangle_colour(bbox_left,bbox_top,bbox_right,bbox_bottom,c_red,c_red,c_red,c_red,true);
	}
}