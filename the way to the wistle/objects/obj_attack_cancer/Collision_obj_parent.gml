/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 296010F1
/// @DnDArgument : "code" "if (other.id != creator) {$(13_10)    other.hp -= attack;$(13_10)    $(13_10)	var dir = point_direction(x, y, other.x, other.y);$(13_10)	var x_force = lengthdir_x(kb, dir);$(13_10)	var y_force = lengthdir_y(kb, dir);$(13_10)	$(13_10)	with (other) {$(13_10)	    physics_apply_impulse(x, y, x_force, y_force); $(13_10)	}	$(13_10)}"
if (other.id != creator) {
    other.hp -= attack;
    
	var dir = point_direction(x, y, other.x, other.y);
	var x_force = lengthdir_x(kb, dir);
	var y_force = lengthdir_y(kb, dir);
	
	with (other) {
	    physics_apply_impulse(x, y, x_force, y_force); 
	}	
}