/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6313E68B
/// @DnDArgument : "code" "// Объект игрока (obj_player)$(13_10)// В событии Draw (чтобы рисовать здоровье на экране)$(13_10)draw_self(); // Рисуем игрока$(13_10)draw_set_colour(c_red);$(13_10)draw_text(x - 10, y - 30, "HP: " + string(hp)); // Рисуем текущее здоровье над игроком$(13_10)$(13_10)// В событии Step (после обработки урона)$(13_10)if (hp <= 0) {$(13_10)	instance_destroy();$(13_10)    room_goto(rm_game_over); // Уничтожаем игрока, если здоровье ≤ 0$(13_10)}$(13_10)$(13_10)"
// Объект игрока (obj_player)
// В событии Draw (чтобы рисовать здоровье на экране)
draw_self(); // Рисуем игрока
draw_set_colour(c_red);
draw_text(x - 10, y - 30, "HP: " + string(hp)); // Рисуем текущее здоровье над игроком

// В событии Step (после обработки урона)
if (hp <= 0) {
	instance_destroy();
    room_goto(rm_game_over); // Уничтожаем игрока, если здоровье ≤ 0
}