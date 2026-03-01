// 1. Audio Swap
audio_stop_all(); // Kill the cave ambience
audio_play_sound(snd_victory_theme, 10, false); // Start victory music

// 2. State Variables
fade_alpha = 0;   // Transparency for the black screen
image_alpha = 0;  // Transparency for the victory image
show_image = false;

// 3. Timing
timer = 0;