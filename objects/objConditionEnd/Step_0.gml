/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
event_inherited()



image_xscale = ((string_width(text)+32)/64)


	



	
if loop < 1{
loop = 1	
}








if creator != noone{
if !instance_exists(creator){
instance_destroy()	
}else{
if mouse_over(){
creator.out = true	
}else{
creator.out = false	
}
}
}

if !drag{
	if order >= 0{

		objBlockCode.blocks[order] = id

		array_set(objBlockCode.blocks,order,id)

	}
}else{
	
	if order > array_length(objBlockCode.blocks)-1{
		array_push(objBlockCode.blocks,noone)	
	}
}