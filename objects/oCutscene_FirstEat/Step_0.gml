// 1. Typewriter Logic
if (char_index < string_length(text_full)) 
{
    char_index += type_speed;
    text_visible = string_copy(text_full, 1, floor(char_index));
    
    // Optional: Play a tiny "blip" sound for each new character
    // if (floor(char_index) > floor(char_index - type_speed)) audio_play_sound(snd_click, 1, false);
}

// 2. Check for any key press to resume
if (keyboard_check_pressed(vk_anykey)) 
{
    if (instance_exists(oAnt)) 
    {
        oAnt.move_speed = 2; // Restore speed
    }
    instance_destroy();
}