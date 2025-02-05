/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
event_inherited()


image_xscale = ((string_width(text)+32)/64)





	
if dir > actioncount{
	dir = 0	
}
if room = Room1{
	actioncount = 1
if dir == 0{
	text = "Сьесть"	
}
}else if room = Room145{
actioncount = 2
if dir == 0{
text = "Взять Ящик"	
}else if dir == 1{
text = "Положить ящик"	
}
}else if room = Room14{
actioncount = 3
if dir == 0{
text = "Нажать Рычаг"	
}else if dir == 1{
text = "Взять Деталь"	
}else if dir == 2{
text = "Положить Деталь"	
}	
}else if room = Room147{
actioncount = 2
if dir == 0{
text = "Взять предмет"	
}else if dir == 1{
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
	if objPlayer.applace{
		audio_play_sound(sndEat,1,0)
		instance_deactivate_object(objApple)
		objPlayer.eaten = true
	}else{
		objBlockCode.play = false	
		audio_play_sound(sndFail,1,0)
		var txt = instance_create_depth(0,0,0,objCoolText)
		txt.header = "Алгоритм прерван"
		txt.desc = "Нечего есть"
	}
}
}else if room = Room147{
	if dir == 0{
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
			audio_play_sound(sndFail,1,0)
			var txt = instance_create_depth(0,0,0,objCoolText)
			txt.header = "Алгоритм прерван"
			txt.desc = "Далеко от полки с продуктами"
		}
	}else if dir == 1{
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
		audio_play_sound(sndFail,1,0)
		var txt = instance_create_depth(0,0,0,objCoolText)
		txt.header = "Алгоритм прерван"
		txt.desc = "Нечего оплачивать"
		}

}else{
	objBlockCode.play = false
	audio_play_sound(sndFail,1,0)
	var txt = instance_create_depth(0,0,0,objCoolText)
	txt.header = "Алгоритм прерван"
	txt.desc = "Далеко от кассы"	
}
}
}else if room = Room14{
if dir == 0{
if objPlayer.levplace{
	if lever.image_index = 0{
		alarm[0] = 60
	audio_play_sound(sndLever,1,0)
	objLever.image_index = 1
	}
}else{
	objBlockCode.play = false	
	audio_play_sound(sndFail,1,0)
	var txt = instance_create_depth(0,0,0,objCoolText)
	txt.header = "Алгоритм прерван"
	txt.desc = "Далеко от рычага"	
}
}else if dir == 1{
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
	audio_play_sound(sndFail,1,0)
	var txt = instance_create_depth(0,0,0,objCoolText)
	txt.header = "Алгоритм прерван"
	txt.desc = "Нечего брать"
}
}else if dir == 2{
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
		audio_play_sound(sndFail,1,0)
		var txt = instance_create_depth(0,0,0,objCoolText)
		txt.header = "Алгоритм прерван"
		txt.desc = "Далеко от конвеера"
		}

	}else{
	objBlockCode.play = false		
	audio_play_sound(sndFail,1,0)
	var txt = instance_create_depth(0,0,0,objCoolText)
	txt.header = "Алгоритм прерван"
	txt.desc = "Нечего класть(нет детали)"
	}

}
}else if room = Room145{
	if dir == 0{
		if objPlayer.boxplace{
			if !objPlayer.box{
				audio_play_sound(sndPickup,1,0)
				objPlayer.box = true
			}
		}else{
		objBlockCode.play = false	
	audio_play_sound(sndFail,1,0)
	var txt = instance_create_depth(0,0,0,objCoolText)
	txt.header = "Алгоритм прерван"
	txt.desc = "Нечего брать(далеко от коробки)"
		
		}
	}else if dir == 1{
		if objPlayer.box{
			if objPlayer.truckplace{
				objPlayer.box = false
				objBlockCode.boxes++
			}else{
				objBlockCode.play = false	
				audio_play_sound(sndFail,1,0)
				var txt = instance_create_depth(0,0,0,objCoolText)
				txt.header = "Алгоритм прерван"
				txt.desc = "Далеко от грузовика"
			}
		}else{
			objBlockCode.play = false	
		audio_play_sound(sndFail,1,0)
		var txt = instance_create_depth(0,0,0,objCoolText)
		txt.header = "Алгоритм прерван"
		txt.desc = "Нечего класть(нет коробки)"
		}
	}
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
