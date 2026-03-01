if (instance_exists(oAnt))
{
    // 1. Calculate the Depth Ratio based on 3000 pixels
    // clamp() ensures that if the ant goes past 3000 (e.g., falls off the map), 
    // the ratio stays at 1.0.
    var _current_y = clamp(oAnt.y, 0, 3000);
    var _depth_ratio = _current_y / 3000;
    
    // 2. Adjust Volume (Gain)
    // Surface (0px) = 0.2 volume | Bottom (3000px) = 0.8 volume
    var _new_volume = lerp(0.2, 0.8, _depth_ratio);
    audio_sound_gain(snd_ambient_snow, _new_volume, 100); // 100ms smoothing
    
    // 3. Adjust Pitch
    // Surface = 1.0 pitch (Normal) | Bottom = 0.6 pitch (Deep & Slow)
    var _new_pitch = lerp(1.0, 0.6, _depth_ratio);
    audio_sound_pitch(snd_ambient_snow, _new_pitch);
}
// 1. If the intro is currently playing, STOP. 
// This prevents the snow sound from playing during the "I'm so cold" sequence.
if (instance_exists(oIntroCutscene)) exit;

// 2. Once the intro is gone, check if the snow sound is NOT playing.
if (!audio_is_playing(snd_ambient_snow)) 
{
    // Play the ambient sound on loop
    audio_play_sound(snd_ambient_snow, 100, true);

    // Set the volume to be subtle
    audio_sound_gain(snd_ambient_snow, 0.4, 0);
    
    // Debug message to verify it's working (Check your Output window!)
    show_debug_message("Intro finished: Snow sound restarted.");
}