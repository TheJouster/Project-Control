/// @description Insert description here
// You can write your code in this editor
if room = Room3{
	ini_open("save")
	var rm = ini_read_string("Main","room","Room1Tutorial1")
	ini_close()
	SlideTransition(TRANS_MODE.GOTO,asset_get_index(rm))	
}