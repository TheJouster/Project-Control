/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
event_inherited()



image_xscale = ((string_width(text)+32)/64)

	


if room = Room147{
conditioncount = 12	
}else{
conditioncount = 7	
}
	


if condition == 0{
text = "Пока Справа Стена, то"
}else if condition == 1{
text = "Пока Сверху Стена, то"
}else if condition == 2{
text = "Пока Слева Стена, то"
}else if condition == 3{
text = "Пока Снизу Стена, то"
}else if condition == 4{
text = "Пока Справа Свободно, то"
}else if condition == 5{
text = "Пока Сверху Свободно, то"
}else if condition == 6{
text = "Пока Слева Свободно, от"
}else if condition == 7{
text = "Пока Снизу Свободно, то"
}else if condition == 8{
text = "Пока Всё не Приобретено, то"
}else if condition == 9{
text = "Пока не Приобретено Достаточно Фруктов, то"
}else if condition == 10{
text = "Пока не Приобретено Достаточно Молока, то"
}else if condition == 11{
text = "Пока не Приобретено Достаточно Овощей, то"
}else if condition == 12{
text = "Пока не Приобретено Достаточно Снеков, то"
}





if loopend != noone{
if instance_exists(loopend){
if objBlockCode.play{
if objBlockCode.order = order{
if condition == 0{
if objPlayer.rplace{
cond = true	
}else{
objBlockCode.order = loopend.order+1
cond = false	
}
}else if condition == 1{
if objPlayer.uplace{
cond = true	
}else{
objBlockCode.order = loopend.order+1
cond = false	
}
}else if condition == 2{
if objPlayer.lplace{
cond = true	
}else{
objBlockCode.order = loopend.order+1
cond = false	
}
}else if condition == 3{
if objPlayer.dplace{
cond = true	
}else{
objBlockCode.order = loopend.order+1
cond = false	
}
}else if condition == 4{
if !objPlayer.rplace{
cond = true	
}else{
objBlockCode.order = loopend.order+1
cond = false	
}
}else if condition == 5{
if !objPlayer.uplace{
cond = true	
}else{
objBlockCode.order = loopend.order+1
cond = false	
}
}else if condition == 6{
if !objPlayer.lplace{
cond = true	
}else{
objBlockCode.order = loopend.order+1
cond = false	
}
}else if condition == 7{
if !objPlayer.dplace{
cond = true	
}else{
objBlockCode.order = loopend.order+1
cond = false	
}
}else if condition == 8{
if objBlockCode.fruits != objBlockCode.fruitsmax and objBlockCode.milk != objBlockCode.milkmax and objBlockCode.vegetables != objBlockCode.vegetablesmax and objBlockCode.snacks != objBlockCode.snacksmax{
cond = true	
}else{
objBlockCode.order = loopend.order+1
cond = false	
}
}else if condition == 9{
if objBlockCode.fruits != objBlockCode.fruitsmax{
cond = true	
}else{
objBlockCode.order = loopend.order+1
cond = false	
}
}else if condition == 10{
if objBlockCode.milk != objBlockCode.milkmax{
cond = true	
}else{
objBlockCode.order = loopend.order+1
cond = false	
}
}else if condition == 11{
if objBlockCode.vegetables != objBlockCode.vegetablesmax{
cond = true	
}else{
objBlockCode.order = loopend.order+1
cond = false	
}
}else if condition == 12{
if objBlockCode.snacks != objBlockCode.snacksmax{
cond = true	
}else{
objBlockCode.order = loopend.order+1
cond = false	
}
}
}
}else{

}
}

}

if condition > conditioncount{
condition = 0	
}
if condition < 0{
condition = conditioncount	
}



if loopend != noone{
if !instance_exists(loopend){
instance_destroy()	
}else{
if mouse_over(){
loopend.out = true	
}else{
loopend.out = false	
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
if alarm[2] < 0{
	alarm[2] = 2	
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