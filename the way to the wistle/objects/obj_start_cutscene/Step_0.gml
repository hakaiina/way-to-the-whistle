/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4DAF50C2
/// @DnDArgument : "code" "if (keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_right)) {$(13_10)    current_frame++; $(13_10)$(13_10)    if (current_frame > max_frames) {$(13_10)        room_goto(rm_foot); $(13_10)    } else {$(13_10)        sprite_index = asset_get_index("spr_start_cutscene_" + string(current_frame));$(13_10)    }$(13_10)}$(13_10)$(13_10)if (keyboard_check_pressed(vk_left)) {$(13_10)    current_frame = max(1, current_frame - 1); $(13_10)    sprite_index = asset_get_index("spr_start_cutscene_" + string(current_frame));$(13_10)}$(13_10)$(13_10)"
if (keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_right)) {
    current_frame++; 

    if (current_frame > max_frames) {
        room_goto(rm_foot); 
    } else {
        sprite_index = asset_get_index("spr_start_cutscene_" + string(current_frame));
    }
}

if (keyboard_check_pressed(vk_left)) {
    current_frame = max(1, current_frame - 1); 
    sprite_index = asset_get_index("spr_start_cutscene_" + string(current_frame));
}