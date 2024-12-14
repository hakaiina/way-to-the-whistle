/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 43D989FC
/// @DnDArgument : "code" "event_inherited();$(13_10)if (instance_exists(obj_cancer)) {$(13_10)	$(13_10)phy_position_x += sign (obj_cancer.x - x) * speed_boss;$(13_10)phy_position_y += sign (obj_cancer.y - y) * speed_boss;$(13_10)}"
event_inherited();
if (instance_exists(obj_cancer)) {
	
phy_position_x += sign (obj_cancer.x - x) * speed_boss;
phy_position_y += sign (obj_cancer.y - y) * speed_boss;
}