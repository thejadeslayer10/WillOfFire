// 1. If the intro is still playing, don't do anything yet
if (instance_exists(oIntroCutscene)) exit;

// 2. Once the intro is gone, check if the snow sound is playing
if (!audio_is_playing(snd_ambient_snow)) 
{
    // Play the ambient sound on loop
    audio_play_sound(snd_ambient_snow, 100, true);
    
    // Set the volume to be subtle
    audio_sound_gain(snd_ambient_snow, 0.4, 0);
}