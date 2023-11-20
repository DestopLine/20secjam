if window_has_focus()
{
    var camWidth = 960;
    var camHeight = 540;

    // subtractive lighting
    if (!surface_exists(global.lightSurf))
    {
        global.lightSurf = surface_create(camWidth, camHeight);
    }

    surface_set_target(global.lightSurf);
    var lum = ambience * 255;
    draw_clear_alpha(make_color_rgb(lum, lum, lum), 1.0);
    surface_reset_target();
    
    with (oLight)
    {
        gpu_set_blendmode(bm_max);

        // draw lights
        surface_set_target(global.lightSurf);
        var lightCol = make_color_hsv(coloring, 0, lightStrength * multiplier);
        draw_sprite_ext(sSmoothLight, -1, x-oCamera.camera.pos[0], y-oCamera.camera.pos[1], radius, radius, 1, lightCol + coloring, 1);
        surface_reset_target();
        gpu_set_blendmode_ext(bm_zero, bm_src_color);
        continue;
    }

    draw_surface(global.lightSurf, oCamera.camera.pos[0], oCamera.camera.pos[1]);
    gpu_set_blendmode(bm_normal);
}
