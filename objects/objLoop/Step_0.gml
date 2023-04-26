/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
event_inherited()



image_xscale = ((string_width(text)+32)/64)

	



	
if loop < 0{
loop = 0	
}
if loop > 0{
text = "Сделать "+string(loop) + " раз"
}else{
text = "Повторять Постоянно"
}






if objBlockCode.play{
if objBlockCode.order = order{

}
}else{
looped = 0
}

if y >= 0{
objBlockCode.blocks[order] = id
if instance_exists(loopend){
objBlockCode.blocks[loopend.order] = loopend.id
}

}


if !instance_exists(loopend){
instance_destroy()	
}else{
if mouse_over(){
loopend.out = true	
}else{
loopend.out = false	
}
}