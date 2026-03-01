// 1. TYPING PHASE
if (state == "typing") {
    if (char_index < string_length(text_full)) {
        char_index += type_speed;
        text_visible = string_copy(text_full, 1, floor(char_index));
    } else {
        state = "waiting";
        timer = 0;
    }
}

// 2. THE 1-SECOND GAP
else if (state == "waiting") {
    timer++;
    text_visible = ""; 
    if (timer >= 60) {
        loop_count += 1;
        if (loop_count < 3) {
            state = "typing";
            char_index = 0;
        } else {
            state = "finished";
        }
    }
}

// 3. WAIT FOR INPUT
else if (state == "finished") {
    text_visible = text_full;
    if (keyboard_check_pressed(vk_anykey)) {
        state = "fading_out";
    }
}

// 4. THE WAKE UP (No Room Change!)
else if (state == "fading_out") {
    fade_white += 0.02;
    if (fade_white >= 1) {
        // Instead of room_goto, we just destroy this object.
        // This "unblocks" the oAnt because instance_exists(oIntroCutscene) will now be false.
        instance_destroy();
    }
}