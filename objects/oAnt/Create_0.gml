// 1. Movement and Digging Stats
move_speed = 2;

dig_speed = 1;

grid_size = 18;

// 2. Survival Stats
warmth = 100;

max_warmth = 100;
hunger = 100;

max_hunger = 100;

// 3. State Variables
is_moving = false;
target_x = x;

target_y = y;

// 4. Grid Alignment
x = floor(x / grid_size) * grid_size + (grid_size / 2);
y = floor(y / grid_size) * grid_size + (grid_size / 2);

// 5. Visual Layering
depth = -100;