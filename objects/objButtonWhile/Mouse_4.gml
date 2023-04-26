/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
ini_open("save")
var tip4= ini_read_real("Main","Tip4",0)
ini_close()
if !tip4{
	if !instance_exists(objTip){
var t4 = instance_create_depth(0,0,-9999,objTip)
	
t4.tip = 3
ini_open("save")
ini_write_real("Main","Tip4",1)
ini_close()
	}
}
var cond = instance_create_depth(room_width-16*image_xscale,(8*array_length(objBlockCode.blocks)),-999,objWhile)
var cond1 = instance_create_depth(room_width-16*image_xscale,(8*(array_length(objBlockCode.blocks)+1)),-999,objWhileEnd)
//cond.order = (array_length(blocks))
cond.toy = 8*(array_length(objBlockCode.blocks))
//cond1.order = (array_length(blocks)+1)
cond1.toy = 8*(array_length(objBlockCode.blocks)+1)
cond1.creator = cond
cond.condend = cond1
audio_play_sound(sndPop2,1,0)


