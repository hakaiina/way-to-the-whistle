/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2275B5C2
/// @DnDArgument : "code" "if (keyboard_check(vk_right)) {$(13_10)	phy_position_x += speed_cancer;$(13_10)}$(13_10)if (keyboard_check(vk_left)) {$(13_10)	phy_position_x -= speed_cancer;$(13_10)}$(13_10)if (keyboard_check(vk_down)) {$(13_10)	phy_position_y += speed_cancer;$(13_10)}$(13_10)if (keyboard_check(vk_up)) {$(13_10)	phy_position_y -= speed_cancer;$(13_10)}$(13_10)$(13_10)if (keyboard_check_pressed(ord("E")))$(13_10)    instance_create_depth(x -12, y, 0, obj_damage);"
if (keyboard_check(vk_right)) {
	phy_position_x += speed_cancer;
}
if (keyboard_check(vk_left)) {
	phy_position_x -= speed_cancer;
}
if (keyboard_check(vk_down)) {
	phy_position_y += speed_cancer;
}
if (keyboard_check(vk_up)) {
	phy_position_y -= speed_cancer;
}

if (keyboard_check_pressed(ord("E")))
    instance_create_depth(x -12, y, 0, obj_damage);