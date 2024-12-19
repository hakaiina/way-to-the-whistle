/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 43D989FC
/// @DnDArgument : "code" "event_inherited();$(13_10)if (instance_exists(obj_cancer)) {$(13_10)	$(13_10)phy_position_x += sign (obj_cancer.x - x) * speed_boss;$(13_10)phy_position_y += sign (obj_cancer.y - y) * speed_boss;$(13_10)}$(13_10)$(13_10)if (attack_cooldown > 0) {$(13_10)    attack_cooldown -= 1; // Уменьшаем таймер перезарядки$(13_10)}$(13_10)$(13_10)// Уменьшаем таймер перезарядки$(13_10)if (attack_cooldown > 0) {$(13_10)    attack_cooldown -= 1;$(13_10)}$(13_10)$(13_10)// Проверяем столкновение с игроком$(13_10)if (place_meeting(x, y, obj_cancer)) {$(13_10)    if (attack_cooldown <= 0) {$(13_10)        var player = instance_place(x, y, obj_cancer); // Получаем ссылку на игрока$(13_10)        if (player != noone) {$(13_10)            player.hp -= 5; // Наносим 1 урон игроку$(13_10)            attack_cooldown = attack_interval; // Сбрасываем таймер$(13_10)        }$(13_10)    }$(13_10)}$(13_10)"
event_inherited();
if (instance_exists(obj_cancer)) {
	
phy_position_x += sign (obj_cancer.x - x) * speed_boss;
phy_position_y += sign (obj_cancer.y - y) * speed_boss;
}

if (attack_cooldown > 0) {
    attack_cooldown -= 1; // Уменьшаем таймер перезарядки
}

// Уменьшаем таймер перезарядки
if (attack_cooldown > 0) {
    attack_cooldown -= 1;
}

// Проверяем столкновение с игроком
if (place_meeting(x, y, obj_cancer)) {
    if (attack_cooldown <= 0) {
        var player = instance_place(x, y, obj_cancer); // Получаем ссылку на игрока
        if (player != noone) {
            player.hp -= 5; // Наносим 1 урон игроку
            attack_cooldown = attack_interval; // Сбрасываем таймер
        }
    }
}