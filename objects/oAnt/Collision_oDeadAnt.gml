// 1. Existing Survival Logic
warmth += 20;
warmth = min(warmth, max_warmth);
audio_play_sound(snd_eat_ant, 3, false);

// 2. Trigger the "Anything for Survival" cutscene only once
if (global.first_ant_eaten == false) 
{
    global.first_ant_eaten = true;
    
    // Create the cutscene object
    instance_create_layer(0, 0, "Instances", oCutscene_FirstEat);
    
    // Disable movement so the player has to read
    move_speed = 0;
}

// 3. Destroy the remains
instance_destroy(other);
audio_play_sound(snd_eat_ant, 2, false);