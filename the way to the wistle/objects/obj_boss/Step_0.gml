/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 43D989FC
/// @DnDArgument : "code" "event_inherited();$(13_10)phy_position_x += sign (obj_cancer.x - x);$(13_10)phy_position_y += sign (obj_cancer.y - y);$(13_10)$(13_10)$(13_10)var player = instance_nearest(x, y, obj_cancer); $(13_10)$(13_10)if (instance_exists(player)) { $(13_10)    var dir = point_direction(x, y, player.x, player.y);$(13_10)$(13_10)    var speed_boss = 2; $(13_10)$(13_10)    x += lengthdir_x(speed_boss, dir);$(13_10)    y += lengthdir_y(speed_boss, dir); $(13_10)$(13_10)    if (dir >= 45 && dir < 135) {$(13_10)        sprite_index = spr_boss_up; $(13_10)    } else if (dir >= 135 && dir < 225) {$(13_10)        sprite_index = spr_boss_left; $(13_10)    } else if (dir >= 225 && dir < 315) {$(13_10)        sprite_index = spr_boss_down; $(13_10)    } else {$(13_10)        sprite_index = spr_boss_right; $(13_10)    }$(13_10)}$(13_10)$(13_10)if (!is_alive) {$(13_10)    sprite_index = spr_boss_death;$(13_10)    image_speed = 0.5; $(13_10)    if (image_index >= sprite_get_number(spr_boss_death) - 1) {$(13_10)        instance_destroy(); $(13_10)    }$(13_10)}$(13_10)$(13_10)$(13_10)if (attack_cooldown > 0) {$(13_10)    attack_cooldown -= 1;$(13_10)}$(13_10)$(13_10)if (attack_cooldown > 0) {$(13_10)    attack_cooldown -= 1;$(13_10)}$(13_10)$(13_10)if (place_meeting(x, y, obj_cancer)) {$(13_10)    if (attack_cooldown <= 0) {$(13_10)        var player = instance_place(x, y, obj_cancer); $(13_10)        if (player != noone) {$(13_10)            player.hp -= 5;$(13_10)            attack_cooldown = attack_interval;$(13_10)        }$(13_10)    }$(13_10)}$(13_10)if (hp <= 0) {$(13_10)	instance_destroy(obj_cancer);$(13_10)	instance_destroy(obj_boss);$(13_10)    room_goto(rm_win); $(13_10)}$(13_10)$(13_10)"
event_inherited();
phy_position_x += sign (obj_cancer.x - x);
phy_position_y += sign (obj_cancer.y - y);


var player = instance_nearest(x, y, obj_cancer); 

if (instance_exists(player)) { 
    var dir = point_direction(x, y, player.x, player.y);

    var speed_boss = 2; 

    x += lengthdir_x(speed_boss, dir);
    y += lengthdir_y(speed_boss, dir); 

    if (dir >= 45 && dir < 135) {
        sprite_index = spr_boss_up; 
    } else if (dir >= 135 && dir < 225) {
        sprite_index = spr_boss_left; 
    } else if (dir >= 225 && dir < 315) {
        sprite_index = spr_boss_down; 
    } else {
        sprite_index = spr_boss_right; 
    }
}

if (!is_alive) {
    sprite_index = spr_boss_death;
    image_speed = 0.5; 
    if (image_index >= sprite_get_number(spr_boss_death) - 1) {
        instance_destroy(); 
    }
}


if (attack_cooldown > 0) {
    attack_cooldown -= 1;
}

if (attack_cooldown > 0) {
    attack_cooldown -= 1;
}

if (place_meeting(x, y, obj_cancer)) {
    if (attack_cooldown <= 0) {
        var player = instance_place(x, y, obj_cancer); 
        if (player != noone) {
            player.hp -= 5;
            attack_cooldown = attack_interval;
        }
    }
}
if (hp <= 0) {
	instance_destroy(obj_cancer);
	instance_destroy(obj_boss);
    room_goto(rm_win); 
}