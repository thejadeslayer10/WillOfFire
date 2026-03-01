// 1. Create the victory controller if it doesn't exist yet
if (!instance_exists(oVictory)) {
    instance_create_layer(0, 0, "Instances", oVictory);
}

// 2. Disable player control and movement
with (oAnt) {
    move_speed = 0;
    _h_input = 0; // Stop horizontal drift
    _v_input = 0; // Stop vertical drift
}