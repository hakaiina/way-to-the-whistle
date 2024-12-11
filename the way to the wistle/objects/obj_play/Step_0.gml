/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5A3ECFAD
/// @DnDArgument : "code" "if instance_position(mouse_x, mouse_y, self)$(13_10)image_index=1$(13_10)else$(13_10)image_index=0"
if instance_position(mouse_x, mouse_y, self)
image_index=1
else
image_index=0