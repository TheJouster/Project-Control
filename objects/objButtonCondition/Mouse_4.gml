/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
ini_open("save")
var tip3 = ini_read_real("Main","Tip3",0)
ini_close()
if !tip3{
	if !instance_exists(objTip){
var t3 = instance_create_depth(0,0,-9999,objTip)
	
t3.tip = 2
ini_open("save")
ini_write_real("Main","Tip3",1)
ini_close()
	}
}
var cond = instance_create_depth(room_width-16*image_xscale,(8*array_length(objBlockCode.blocks))+global.yst,-999,objCondition)

cond.order = array_length(objBlockCode.blocks)
cond.y = 8*(array_length(objBlockCode.blocks))+global.yst
cond.toy = 8*(array_length(objBlockCode.blocks))


audio_play_sound(sndPop2,1,0)

