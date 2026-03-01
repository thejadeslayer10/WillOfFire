// THIS MUST BE LINE 1 (Nothing can be above this!)
if (instance_exists(oIntroCutscene)) exit;

// ... Your health/hunger bar code starts here ...
var _bar_x = 8;
// 1. Draw the Heat Bar (Warmth)
draw_healthbar(20, 20, 200, 40, warmth, c_black, c_red, c_orange, 0, true, true);
draw_text(20, 45, "WARMTH");

// 2. Draw the Hunger Bar (Food)
draw_healthbar(20, 70, 200, 90, hunger, c_black, c_green, c_lime, 0, true, true);
draw_text(20, 95, "HUNGER/SPEED");
// Example for a specific dirt area
x = clamp(x, 10, 360);
y = clamp(y, 125, 3000);


