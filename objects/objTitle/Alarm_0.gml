/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
ini_open("save")
var rm = ini_read_string("Main","room","Room1Tutorial1")
ini_close()
if room = Room3{
SlideTransition(TRANS_MODE.GOTO,asset_get_index(rm))
}else{
ini_open("save")
ini_write_string("Main","room","Room1Tutorial1")
ini_close()
game_end()
}