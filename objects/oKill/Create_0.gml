spd = 1;
Res = shader_get_uniform(sh_waterwave, "iResolution"); 
Time = shader_get_uniform(sh_waterwave, "iGlobalTime"); 
Color = shader_get_uniform(sh_waterwave, "Color"); 
wavesurf = surface_create(image_xscale, image_yscale);
