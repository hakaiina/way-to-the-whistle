/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2275B5C2
/// @DnDArgument : "code" "event_inherited();$(13_10)player_input();$(13_10)if (right_move) {$(13_10)	phy_position_x += speed_cancer;$(13_10)	sprite_index = spr_right;$(13_10)	image_speed = 1;$(13_10)}$(13_10)if (left_move) {$(13_10)	phy_position_x -= speed_cancer;$(13_10)	sprite_index = spr_left;$(13_10)	image_speed = 1;$(13_10)}$(13_10)if (down_move) {$(13_10)	phy_position_y += speed_cancer;$(13_10)	sprite_index = spr_down;$(13_10)	image_speed = 1;$(13_10)}$(13_10)if (up_move) {$(13_10)	phy_position_y -= speed_cancer;$(13_10)	sprite_index = spr_up;$(13_10)	image_speed = 1;$(13_10)}$(13_10)$(13_10)if (!right_move and !left_move and !down_move and !up_move) {$(13_10)	image_speed = 0;$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)if (keyboard_check_pressed(ord("K"))) {$(13_10)	var damage = instance_create_depth(x - 35, y - 30, 0, obj_attack_cancer); $(13_10)	damage.creator = id;$(13_10)}$(13_10)$(13_10)$(13_10)// Проверка здоровья игрока$(13_10)if (hp <= 0) {$(13_10)    room_goto(rm_game_over);$(13_10)}$(13_10)$(13_10)"
event_inherited();
player_input();
if (right_move) {
	phy_position_x += speed_cancer;
	sprite_index = spr_right;
	image_speed = 1;
}
if (left_move) {
	phy_position_x -= speed_cancer;
	sprite_index = spr_left;
	image_speed = 1;
}
if (down_move) {
	phy_position_y += speed_cancer;
	sprite_index = spr_down;
	image_speed = 1;
}
if (up_move) {
	phy_position_y -= speed_cancer;
	sprite_index = spr_up;
	image_speed = 1;
}

if (!right_move and !left_move and !down_move and !up_move) {
	image_speed = 0;
}



if (keyboard_check_pressed(ord("K"))) {
	var damage = instance_create_depth(x - 35, y - 30, 0, obj_attack_cancer); 
	damage.creator = id;
}


// Проверка здоровья игрока
if (hp <= 0) {
    room_goto(rm_game_over);
}