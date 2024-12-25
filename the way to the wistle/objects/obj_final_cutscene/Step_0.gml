/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 32774AD0
/// @DnDArgument : "code" "if (keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_right)) {$(13_10)    current_frame++; $(13_10)$(13_10)    if (current_frame > max_frames) {$(13_10)		sound_played = false; $(13_10)        room_goto(rm_end); 	$(13_10)    } else {$(13_10)        sprite_index = asset_get_index("spr_final_cutscene_" + string(current_frame));$(13_10)    }$(13_10)}$(13_10)$(13_10)$(13_10)if (keyboard_check_pressed(vk_left)) {$(13_10)    current_frame = max(1, current_frame - 1); $(13_10)    sprite_index = asset_get_index("spr_final_cutscene_" + string(current_frame));$(13_10)}$(13_10)$(13_10)if (current_frame == 5 && !sound_played) { $(13_10)    audio_play_sound(snd_whistle, 1, false); $(13_10)    sound_played = true;$(13_10)}"
if (keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_right)) {
    current_frame++; 

    if (current_frame > max_frames) {
		sound_played = false; 
        room_goto(rm_end); 	
    } else {
        sprite_index = asset_get_index("spr_final_cutscene_" + string(current_frame));
    }
}


if (keyboard_check_pressed(vk_left)) {
    current_frame = max(1, current_frame - 1); 
    sprite_index = asset_get_index("spr_final_cutscene_" + string(current_frame));
}

if (current_frame == 5 && !sound_played) { 
    audio_play_sound(snd_whistle, 1, false); 
    sound_played = true;
}