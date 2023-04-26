/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
if room = Room5{
x-=4
}else{
x += 4	
}
if y >= 80{
sprite_index = sprTree1Light	
}else{
sprite_index = sprTree1	
}
depth = -y
if x < -64{
instance_destroy()	
}