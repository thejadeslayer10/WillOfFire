// If the intro is happening, stop this object from doing anything
if (instance_exists(oIntroCutscene)) exit;
// 1. Get Player Input (Horizontal and Vertical)
var _right = keyboard_check(ord("D"));
var _left = keyboard_check(ord("A"));
var _up = keyboard_check(ord("W"));
var _down = keyboard_check(ord("S"));

var _h_input = _right - _left;
var _v_input = _down - _up;

// 2. Update Movement State
if (_h_input != 0 || _v_input != 0)
{
is_moving = true;
}
else
{
is_moving = false;
}

// 3. Apply Movement
x += _h_input * move_speed;
y += _v_input * move_speed;

// 4. Survival Logic (Decay)

warmth -= 0.02; 
hunger -= 0.05; 

//  Prevent Hunger from going below zero
// The max() function compares two numbers and picks the largest.
// If hunger is -0.05, max(-0.05, 0) will return 0.
hunger = max(hunger, 0);

// 3. Prevent Warmth from going below zero (Optional but recommended)
warmth = max(warmth, 0);

// 5. Hunger/Speed Correlation
// We check hunger and apply a multiplier to your BASE speed
if (hunger < 15)
{
// If starving, you dig at 50% of your current potential speed
dig_speed = 1.5;
}
else
{
// If fed, you dig at 100% of your current potential speed
dig_speed = 2;
}
// 6. Death Check
if (warmth <= 0) 
{
    if (!instance_exists(Object8)) 
    {
        instance_create_layer(0, 0, "Instances", Object8);
    }
    // Optional: Stop the ant from moving while the screen is up
    move_speed = 0; 
}
// 1. Rotation Logic
// Only update the angle if the ant is actually moving
if (_h_input != 0 || _v_input != 0)
{
// point_direction returns: 0 for Right, 90 for Up, 180 for Left, 270 for Down
var _dir = point_direction(0, 0, _h_input, _v_input);

// 2. Adjust for "Naturally Faces Down"
// Since your sprite is drawn facing down (270), we add 90 degrees 
// to align the "front" of your sprite with GameMaker's 0-degree (Right) axis.
image_angle = _dir + 90;
}
// Initialize the survival tracker
global.first_ant_eaten = false;
