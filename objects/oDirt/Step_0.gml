// 1. Check if the Ant is currently digging this block
if (is_being_dug == true)
{
    // 2. Subtract from the timer
    // Ensure we subtract the ant's speed every frame it is touching
    dig_timer -= oAnt.dig_speed;
    
    // 3. Visual Shake
    // This provides feedback that digging is happening
    x += random_range(-1, 1);
    y += random_range(-1, 1);

    // 4. The Destruction Logic (Keep this separate)
    if (dig_timer <= 0) 
    {
        // Play sound exactly once right before destruction
        audio_play_sound(snd_dig, 1, false);
        
        // Transform and disappear
        instance_create_layer(x, y, "Instances", oDugdirt);
        instance_destroy();
    }
}
else 
{
    // 5. Reset Position
    // If the ant stops touching, the block snaps back to the grid
    x = floor(x / 18) * 18 + 9;
    y = floor(y / 18) * 18 + 9;
}

// 6. Reset Flag
// This MUST be the last line
is_being_dug = false;