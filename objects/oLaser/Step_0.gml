switch (mode)
{
    case "toggle":
        if (!on && startfr == frames * 2)
        {
            if (startfr <= 0) on = true;
            startfr--;
            frames = frames;
        }
        
        if (on && !finished)
        {
            alarm[0] = frames;
            finished = true;
            on = false;
        }
        
        if (alarm[0] <= 0 && finished)
        {
            x = startX;
            y = startY;
            alarm[1] = frames * 2;
            finished = false;
        }
        
        if (alarm[1] <= 0 && !on)
        {
            x = 12243;
            y = 23323;
            on = true;
        }
        break;

    case "spin":
        image_angle += rotationSpeed;
        break;

    case "stay":
        break;
}
