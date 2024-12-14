/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 677A3447
/// @DnDArgument : "code" "event_inherited();$(13_10)hp = 3;$(13_10)speed_enemy = 0.5;$(13_10)stop_attack = false; // Флаг для остановки атаки$(13_10)$(13_10)attack_cooldown = 0; // Таймер для отслеживания прошествия времени для атаки$(13_10)attack_interval = 180; // Интервал между атаками (2 секунды, если 60 шагов в секунду)$(13_10)$(13_10)"
event_inherited();
hp = 3;
speed_enemy = 0.5;
stop_attack = false; // Флаг для остановки атаки

attack_cooldown = 0; // Таймер для отслеживания прошествия времени для атаки
attack_interval = 180; // Интервал между атаками (2 секунды, если 60 шагов в секунду)