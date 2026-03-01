// 1. Restore Hunger
// Adding 25 to the current hunger level
hunger += 25;

// 2. Cap the Hunger
// This ensures hunger never exceeds the maximum (100) set in Create
if (hunger > max_hunger)
{
hunger = max_hunger;
}

// 3. Permanent Speed Boost
// Slightly increase the base movement speed with every snack
move_speed += 0.2;

// 4. Update Dig Speed Logic
// The Step event will automatically see that hunger is now > 20
// and set dig_speed back to 1.0 on the next frame

// 5. Remove the Food
// Use 'other' to destroy the specific food instance you touched
instance_destroy(other);
audio_play_sound(snd_eat_food, 2, false);