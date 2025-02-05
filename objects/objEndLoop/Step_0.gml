/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
event_inherited()




image_xscale = ((string_width(text)+32)/64)


	



	
if loop < 1{
loop = 1	
}

if creator != noone{
if instance_exists(creator){
if creator.loop > 0{
if objBlockCode.play{
if objBlockCode.order = order{
if creator.looped < creator.loop-1{
	creator.looped++
objBlockCode.order= creator.order+1
for (var i = creator.order+1; i < order;i++ ){
objBlockCode.blocks[i].completed = false	
objBlockCode.blocks[i].looped = 0
}
}else{
if objBlockCode.order > order{
creator.looped = 0	
}
}
}
}
}else{
if objBlockCode.play{
if objBlockCode.order = order{
objBlockCode.order= creator.order+1
for (var i = creator.order+1; i < order;i++ ){
	if instance_exists(objBlockCode.blocks[i]){
objBlockCode.blocks[i].completed = false	
objBlockCode.blocks[i].looped = 0
}
}

}
}	
}
}
}



if creator != noone{
if !instance_exists(creator){
instance_destroy()	
}else{
if mouse_over(){
creator.out = true	
out = true
}else{
creator.out = false	
out = false
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