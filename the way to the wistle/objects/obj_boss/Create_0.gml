/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1D9EC590
/// @DnDArgument : "code" "event_inherited();$(13_10)sprite_index = spr_boss_down$(13_10)speed_boss = 1;$(13_10)direction = 0; // Направление по умолчанию (вправо)$(13_10)$(13_10)hp = 25;$(13_10)$(13_10)$(13_10)stop_attack = false; // Флаг для остановки атаки$(13_10)$(13_10)attack_cooldown = 0; // Таймер для отслеживания прошествия времени для атаки$(13_10)attack_interval = 180; // Интервал между атаками (2 секунды, если 60 шагов в "
event_inherited();
sprite_index = spr_boss_down
speed_boss = 1;
direction = 0; // Направление по умолчанию (вправо)

hp = 25;


stop_attack = false; // Флаг для остановки атаки

attack_cooldown = 0; // Таймер для отслеживания прошествия времени для атаки
attack_interval = 180; // Интервал между атаками (2 секунды, если 60 шагов в