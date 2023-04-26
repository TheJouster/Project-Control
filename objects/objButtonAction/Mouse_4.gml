/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
ini_open("save")
var tip1 = ini_read_real("Main","Tip1",0)
ini_close()
if !tip1{
	if !instance_exists(objTip){
var t1 = instance_create_depth(0,0,-9999,objTip)
	
t1.tip = 0
ini_open("save")
ini_write_real("Main","Tip1",1)
ini_close()
	}
}
var move = instance_create_depth(room_width-16*image_xscale,(8*array_length(objBlockCode.blocks)),-999,objAction)
move.order = array_length(objBlockCode.blocks)
move.toy = (8*array_length(objBlockCode.blocks))
audio_play_sound(sndPop2,1,0)
