// 1. Gradually fade in the screen
alpha = min(alpha + 0.05, 0.8);

// 2. Check for the R key to retry
if (keyboard_check_pressed(ord("R"))) 
{
    room_restart();
}

// 3. Check for Esc to quit
if (keyboard_check_pressed(vk_escape)) 
{
    game_end();
}