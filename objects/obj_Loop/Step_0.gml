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



if loopend != noone{
	if !instance_exists(loopend){
	instance_destroy()	
	}else{
	if mouse_over(){
	loopend.out = true	
	out= true
	}else{
	loopend.out = false	
	out = false
	}
	}
}

if !drag{
	if order >= 0{
		objBlockCode.blocks[order] = id
		if order = array_length(objBlockCode.blocks)-1{
			array_push(objBlockCode.blocks,id)	
		}
		array_set(objBlockCode.blocks,order,id)
	}
}else{
	if order > array_length(objBlockCode.blocks)-1{
		array_push(objBlockCode.blocks,noone)	
	}
}
if alarm[1] < 0{
	alarm[1] = 2	
}

if drag{
		
	if objBlockCode.drag_instance = id{
		if instance_exists(loopend){
			if loopend.drag{
				loopend.drag_x = drag_x+loopend.dx
				loopend.drag_y = drag_y+loopend.dy				
			}
		}	
		if array_length(drag_objects) > 0{
			var drag_place = [];

			for (var i = 0; i < array_length(drag_objects);i++){
				if instance_exists(drag_objects[i]){
					if drag_objects[i].place != noone and !drag_objects[i].place.drag{
						array_push(drag_place,true)
					}else{
						array_push(drag_place,false)
					}
					drag_objects[i].drag_x = drag_x+drag_objects[i].dx
					drag_objects[i].drag_y = drag_y+drag_objects[i].dy
					drag_objects[i].order = order+i+1
				}
			}
			if array_contains(drag_place,true) or loopend.place != noone or place_meeting(x,y,objBlock){
				order = prevorder	
				toy = (8 * order)+global.yst
				for (var i = 0; i < array_length(drag_objects);i++){
					if instance_exists(drag_objects[i]){
						if drag_objects[i].order != drag_objects[i].prevorder{
							drag_objects[i].order = drag_objects[i].prevorder
							drag_objects[i].toy = (8 * drag_objects[i].order)+global.yst
						}
					}
				}	
				loopend.order = loopend.prevorder	
				loopend.toy = (8 * loopend.order)+global.yst
			}else{		
					
			}
		}
	}
	if instance_exists(loopend){
		if loopend.drag{
			loopend.order = order+ceil((loopend.y-y)/8)
		}
	}
}