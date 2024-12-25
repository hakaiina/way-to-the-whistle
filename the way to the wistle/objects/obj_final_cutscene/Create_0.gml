/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 00259A1A
/// @DnDArgument : "code" "x = 320; $(13_10)y = 180; $(13_10)$(13_10)current_frame = 1; $(13_10)max_frames = 5;    $(13_10)sprite_index = asset_get_index("spr_final_cutscene_" + string(current_frame));$(13_10)$(13_10)sound_played = false;$(13_10)$(13_10)image_xscale = room_width / sprite_get_width(sprite_index);$(13_10)image_yscale = room_height / sprite_get_height(sprite_index);$(13_10)$(13_10)"
x = 320; 
y = 180; 

current_frame = 1; 
max_frames = 5;    
sprite_index = asset_get_index("spr_final_cutscene_" + string(current_frame));

sound_played = false;

image_xscale = room_width / sprite_get_width(sprite_index);
image_yscale = room_height / sprite_get_height(sprite_index);