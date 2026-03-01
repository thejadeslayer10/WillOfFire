if (can_start) {
    if (keyboard_check_pressed(vk_anykey) || mouse_check_button_pressed(mb_any)) {
        // Only create if it doesn't exist yet
        if (!instance_exists(oIntroCutscene)) {
            instance_create_layer(0, 0, "Instances", oIntroCutscene);
        }
        instance_destroy(); // Destroy oMenu so it stops running code
    }
}