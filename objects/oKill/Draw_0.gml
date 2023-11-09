
if (!surface_exists(wavesurf)) 
{
wavesurf = surface_create(image_xscale, image_yscale);
}
//surface_set_target(wavesurf);

draw_sprite_ext(sprite_index,-1,x,y,image_xscale,image_yscale,image_angle,oGame.c_rainbow,image_alpha)
shader_set(sh_waterwave)
shader_set_uniform_f(Res,512,512,0); 
shader_set_uniform_f(Time,current_time/1000); 
//surface_reset_target()
//draw_surface(wavesurf,x,y);
shader_reset()

















