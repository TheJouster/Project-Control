/// @description Insert description here
// You can write your code in this editor
depth = -9999999
col = 0
w = display_get_gui_width()
h = display_get_gui_height()
h_half = h * 0.5
enum TRANS_MODE
{
OFF,
NEXT,
GOTO,
RESTART,
INTRO,
DEATH,
DIE
}
mode = TRANS_MODE.INTRO;
percent = 1.2;
target = asset_get_index(room_get_name(room));
door = false
alpha = 1