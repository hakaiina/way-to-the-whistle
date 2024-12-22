/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 43D989FC
/// @DnDArgument : "code" "event_inherited();$(13_10)$(13_10)// Получаем координаты игрока (предположим, что игрок - объект "obj_cancer")$(13_10)var player = instance_nearest(x, y, obj_cancer); // Находим ближайшего игрока$(13_10)$(13_10)if (instance_exists(player)) { // Проверяем, существует ли игрок$(13_10)    // Вычисляем угол между врагом и игроком$(13_10)    var dir = point_direction(x, y, player.x, player.y);$(13_10)$(13_10)    // Устанавливаем скорость врага (если переменная не определена, задаём её здесь)$(13_10)    var speed_boss = 2; // Скорость врага$(13_10)$(13_10)    // Двигаем врага в сторону игрока$(13_10)    x += lengthdir_x(speed_boss, dir); // Используем правильный угол (dir)$(13_10)    y += lengthdir_y(speed_boss, dir); // Используем правильный угол (dir)$(13_10)$(13_10)    // Смена спрайта в зависимости от направления$(13_10)    if (dir >= 45 && dir < 135) {$(13_10)        sprite_index = spr_boss_up; // Двигается вверх$(13_10)    } else if (dir >= 135 && dir < 225) {$(13_10)        sprite_index = spr_boss_left; // Двигается влево$(13_10)    } else if (dir >= 225 && dir < 315) {$(13_10)        sprite_index = spr_boss_down; // Двигается вниз$(13_10)    } else {$(13_10)        sprite_index = spr_boss_right; // Двигается вправо$(13_10)    }$(13_10)}$(13_10)$(13_10)$(13_10)if (attack_cooldown > 0) {$(13_10)    attack_cooldown -= 1; // Уменьшаем таймер перезарядки$(13_10)}$(13_10)$(13_10)// Уменьшаем таймер перезарядки$(13_10)if (attack_cooldown > 0) {$(13_10)    attack_cooldown -= 1;$(13_10)}$(13_10)$(13_10)// Проверяем столкновение с игроком$(13_10)if (place_meeting(x, y, obj_cancer)) {$(13_10)    if (attack_cooldown <= 0) {$(13_10)        var player = instance_place(x, y, obj_cancer); // Получаем ссылку на игрока$(13_10)        if (player != noone) {$(13_10)            player.hp -= 5; // Наносим 1 урон игроку$(13_10)            attack_cooldown = attack_interval; // Сбрасываем таймер$(13_10)        }$(13_10)    }$(13_10)}$(13_10)if (hp <= 0) {$(13_10)	instance_destroy(obj_cancer);$(13_10)	instance_destroy(obj_boss);$(13_10)    room_goto(rm_win); // Переход в комнату меню поражения$(13_10)}$(13_10)$(13_10)"
event_inherited();

// Получаем координаты игрока (предположим, что игрок - объект "obj_cancer")
var player = instance_nearest(x, y, obj_cancer); // Находим ближайшего игрока

if (instance_exists(player)) { // Проверяем, существует ли игрок
    // Вычисляем угол между врагом и игроком
    var dir = point_direction(x, y, player.x, player.y);

    // Устанавливаем скорость врага (если переменная не определена, задаём её здесь)
    var speed_boss = 2; // Скорость врага

    // Двигаем врага в сторону игрока
    x += lengthdir_x(speed_boss, dir); // Используем правильный угол (dir)
    y += lengthdir_y(speed_boss, dir); // Используем правильный угол (dir)

    // Смена спрайта в зависимости от направления
    if (dir >= 45 && dir < 135) {
        sprite_index = spr_boss_up; // Двигается вверх
    } else if (dir >= 135 && dir < 225) {
        sprite_index = spr_boss_left; // Двигается влево
    } else if (dir >= 225 && dir < 315) {
        sprite_index = spr_boss_down; // Двигается вниз
    } else {
        sprite_index = spr_boss_right; // Двигается вправо
    }
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
if (hp <= 0) {
	instance_destroy(obj_cancer);
	instance_destroy(obj_boss);
    room_goto(rm_win); // Переход в комнату меню поражения
}