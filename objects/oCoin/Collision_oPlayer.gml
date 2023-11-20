switch (value)
{
    case "gold":
        score += 5;
        break;
        
    case "silver":
        score += 1;
        break;
}

audio_play_sound(coins, 1, false);
instance_destroy();
