/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
event_inherited()


image_xscale = ((string_width(text)+32)/64)





	
if dir > actioncount{
	dir = 0	
}
actioncount = 4
if dir == 0{
	text = "Шаг Направо"	
}else if dir == 1{
	text = "Шаг Вверх"	
}else if dir == 2{
	text = "Шаг Налево"	
}else if dir == 3{
	text = "Шаг Вниз"	
}
if dir < 0{
dir = actioncount	
}



if objBlockCode.play{
	if objBlockCode.order = order{
		if !completed{
			if dir == 0{
				objPlayer.tox = objPlayer.x+16
			}else if dir == 1{
				objPlayer.toy = objPlayer.y-16
			}else if dir == 2{
				objPlayer.tox = objPlayer.x-16
			}else if dir == 3{
				objPlayer.toy = objPlayer.y+16
			}
			completed = true	
		}
	}
}else{
completed = false	
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