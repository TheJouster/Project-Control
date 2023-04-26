/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
event_inherited()


image_xscale = ((string_width(text)+32)/64)





	
if dir > actioncount{
	dir = 0	
}
if room = Room1{
	actioncount = 4
if dir == 0{
text = "Шаг Направо"	
}else if dir == 1{
text = "Шаг Вверх"	
}else if dir == 2{
text = "Шаг Налево"	
}else if dir == 3{
text = "Шаг Вниз"	
}else if dir == 4{
text = "Сьесть"	
}
}else if room = Room14{
actioncount = 6
if dir == 0{
text = "Шаг Направо"	
}else if dir == 1{
text = "Шаг Вверх"	
}else if dir == 2{
text = "Шаг Налево"	
}else if dir == 3{
text = "Шаг Вниз"	
}else if dir == 4{
text = "Нажать Рычаг"	
}else if dir == 5{
text = "Взять Деталь"	
}else if dir == 6{
text = "Положить Деталь"	
}	
}else if room = Room147{
actioncount = 5
if dir == 0{
text = "Шаг Направо"	
}else if dir == 1{
text = "Шаг Вверх"	
}else if dir == 2{
text = "Шаг Налево"	
}else if dir == 3{
text = "Шаг Вниз"	
}else if dir == 4{
text = "Взять предмет"	
}else if dir == 5{
text = "Оплатить предмет"	
}	
}
if dir < 0{
dir = actioncount	
}



if objBlockCode.play{
if objBlockCode.order = order{
if !completed{
if room = Room1{
if dir == 0{
objPlayer.tox = objPlayer.x+16
}else if dir == 1{
objPlayer.toy = objPlayer.y-16
}else if dir == 2{
objPlayer.tox = objPlayer.x-16
}else if dir == 3{
objPlayer.toy = objPlayer.y+16
}else if dir == 4{
if objPlayer.applace{
audio_play_sound(sndEat,1,0)
instance_deactivate_object(objApple)
objPlayer.eaten = true
}else{
objBlockCode.play = false	
}
}
}else if room = Room147{
if dir == 0{
objPlayer.tox = objPlayer.x+16
}else if dir == 1{
objPlayer.toy = objPlayer.y-16
}else if dir == 2{
objPlayer.tox = objPlayer.x-16
}else if dir == 3{
objPlayer.toy = objPlayer.y+16
}else if dir == 4{
if objPlayer.prod1place{
	objPlayer.producttype = 0
	objPlayer.product = true
}else if objPlayer.prod2place{
	objPlayer.producttype = 1
	objPlayer.product = true
}else if objPlayer.prod3place{
	objPlayer.producttype = 2
	objPlayer.product = true
}else if objPlayer.prod4place{
	objPlayer.producttype = 3
	objPlayer.product = true
}else{
	objBlockCode.play = false	
}
}else if dir == 5{
if objPlayer.cassplace{
		if objPlayer.product{
			if objPlayer.producttype = 0{
			objBlockCode.fruits++
			}else if objPlayer.producttype = 1{
			objBlockCode.milk++
			}else if objPlayer.producttype = 2{
			objBlockCode.vegetables++
			}else if objPlayer.producttype = 3{
			objBlockCode.snacks++
			}
		objPlayer.product = false
		}else{
		objBlockCode.play = false		
		}

}
}
}else if room = Room14{
if dir == 0{
objPlayer.tox = objPlayer.x+16
}else if dir == 1{
objPlayer.toy = objPlayer.y-16
}else if dir == 2{
objPlayer.tox = objPlayer.x-16
}else if dir == 3{
objPlayer.toy = objPlayer.y+16
}else if dir == 4{
if objPlayer.levplace{
if lever.image_index = 0{
	alarm[0] = 60
audio_play_sound(sndLever,1,0)
objLever.image_index = 1
}
}
}else if dir == 5{
if objPlayer.detplace{
	if !objPlayer.detal{
		if objDetal1.broken{
		objPlayer.detbroken = true	
		}else{
			objPlayer.detbroken = false	
		}
		audio_play_sound(sndPickup,1,0)
instance_destroy(objDetal1)
objPlayer.detal = true

	}
}else{
objBlockCode.play = false	
}
}else if dir == 6{
	if objPlayer.detal{
		if objPlayer.con1place{
objPlayer.detal = false
var det = instance_create_depth(144,88,0,objDetal)
det.broken = objPlayer.detbroken
		}else if objPlayer.con2place{
		objPlayer.detal = false	
		var det = instance_create_depth(80,88,0,objDetal)
det.broken = objPlayer.detbroken
		}else{
		objBlockCode.play = false		
		}

	}else{
	objBlockCode.play = false		
	}

}
}
completed = true	
}
}
}else{
completed = false	
}

if y >= 0{

objBlockCode.blocks[order] = id

}