timer++;

// 1. Fade the screen to black (takes about 2 seconds at 60fps)
if (timer < 120) {
    fade_alpha = min(fade_alpha + 0.01, 1);
}

// 2. Once the screen is black, fade in the victory image
if (timer >= 120) {
    show_image = true;
    image_alpha = min(image_alpha + 0.02, 1);
}
// 1. Existing timer/fade logic (Keep this)
timer++;
if (timer < 120) {
    fade_alpha = min(fade_alpha + 0.01, 1);
}
if (timer >= 120) {
    show_image = true;
    image_alpha = min(image_alpha + 0.02, 1);
}

// 2. NEW: Exit after music ends
// We check if the timer is high enough to ensure the music actually started
if (timer > 150) 
{
    // asset_get_index ensures we don't crash if the sound name is wrong
    var _snd_id = asset_get_index("snd_victory_theme");
    
    // If the sound is NO LONGER playing, close the game
    if (!audio_is_playing(_snd_id)) 
    {
        game_end();
    }
}

