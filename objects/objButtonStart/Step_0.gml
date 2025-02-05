/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
if mouse_over(){
image_blend = c_white	
}else{
image_blend = c_ltgray
}


if objBlockCode.play = false{
sprite_index = sprButton
}else if objBlockCode.play = true{
sprite_index = sprRedButton
}
depth = -999
x = (room_width/2)-(sprite_width/2)