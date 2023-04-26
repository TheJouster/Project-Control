/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе


ini_open("save")
var tip2 = ini_read_real("Main","Tip2",0)
ini_close()
if !tip2{
	if !instance_exists(objTip){
var t2 = instance_create_depth(0,0,-9999,objTip)
	
t2.tip = 1
ini_open("save")
ini_write_real("Main","Tip2",1)
ini_close()
	}
}
var loop = instance_create_depth(room_width-16*image_xscale,(8*array_length(objBlockCode.blocks)),-999,objLoop)
var loop1 = instance_create_depth(room_width-16*image_xscale,(8*(array_length(objBlockCode.blocks)+1)),-999,objEndLoop)
//loop.order = (array_length(blocks))
loop.toy = 8*(array_length(objBlockCode.blocks))
//loop1.order = (array_length(blocks)+1)
loop1.toy = 8*(array_length(objBlockCode.blocks)+1)
loop1.creator = loop
loop.loopend = loop1
audio_play_sound(sndPop2,1,0)
