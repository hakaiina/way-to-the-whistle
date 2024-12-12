/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7D312CD4
/// @DnDArgument : "code" "event_inherited();$(13_10)phy_position_x += sign (obj_cancer.x - x) * speed_enemy;$(13_10)phy_position_y += sign (obj_cancer.y - y) * speed_enemy;$(13_10)"
event_inherited();
phy_position_x += sign (obj_cancer.x - x) * speed_enemy;
phy_position_y += sign (obj_cancer.y - y) * speed_enemy;