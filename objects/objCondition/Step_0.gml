/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
event_inherited()



image_xscale = ((string_width(text)+32)/64)

	



	



if room = Room147{
if condition == 0{
text = "Если Справа Стена, то"
}else if condition == 1{
text = "Если Сверху Стена, то"
}else if condition == 2{
text = "Если Слева Стена, то"
}else if condition == 3{
text = "Если Снизу Стена, то"
}else if condition == 4{
text = "Если Справа Свободно, то"
}else if condition == 5{
text = "Если Сверху Свободно, то"
}else if condition == 6{
text = "Если Слева Свободно, то"
}else if condition == 7{
text = "Если Снизу Свободно, то"
}else if condition == 8{
text = "Если Приобретено Достаточно Фруктов, то"
}else if condition == 9{
text = "Если Приобретено Достаточно Молока, то"
}else if condition == 10{
text = "Если Приобретено Достаточно Овощей, то"
}else if condition == 11{
text = "Если Приобретено Достаточно Снеков, то"
}			
}else{
if condition == 0{
text = "Если Справа Стена, то"
}else if condition == 1{
text = "Если Сверху Стена, то"
}else if condition == 2{
text = "Если Слева Стена, то"
}else if condition == 3{
text = "Если Снизу Стена, то"
}else if condition == 4{
text = "Если Справа Свободно, то"
}else if condition == 5{
text = "Если Сверху Свободно, то"
}else if condition == 6{
text = "Если Слева Свободно, то"
}else if condition == 7{
text = "Если Снизу Свободно, то"
}else if condition == 8{
text = "Если Деталь Бракованная, то"
}else if condition == 9{
text = "Если Деталь не Бракованная, то"
}
}

if room = Room1{
conditioncount = 7	
}else if room = Room14{
conditioncount = 9	
}else{
conditioncount = 11
}

if condition > conditioncount{
condition = 0	
}
if condition < 0{
condition = conditioncount	
}




if instance_exists(condend){
if objBlockCode.play{
if objBlockCode.order = order{
	
if room = Room1 or room = Room14{
	
if condition == 0{
if objPlayer.rplace{
cond = true	
}else{
objBlockCode.order = condend.order
cond = false	
}
}else if condition == 1{
if objPlayer.uplace{
cond = true	
}else{
objBlockCode.order = condend.order
cond = false	
}
}else if condition == 2{
if objPlayer.lplace{
cond = true	
}else{
objBlockCode.order = condend.order
cond = false	
}
}else if condition == 3{
if objPlayer.dplace{
cond = true	
}else{
objBlockCode.order = condend.order
cond = false	
}
}else if condition == 4{
if !objPlayer.rplace{
cond = true	
}else{
objBlockCode.order = condend.order
cond = false	
}
}else if condition == 5{
if !objPlayer.uplace{
cond = true	
}else{
objBlockCode.order = condend.order
cond = false	
}
}else if condition == 6{
if !objPlayer.lplace{
cond = true	
}else{
objBlockCode.order = condend.order
cond = false	
}
}else if condition == 7{
if !objPlayer.dplace{
cond = true	
}else{
objBlockCode.order = condend.order
cond = false	
}
}else if condition == 8{
if objPlayer.detal{
	if objPlayer.detbroken{
cond = true	
	}else{
	objBlockCode.order = condend.order
cond = false		
	}
}else{
objBlockCode.order = condend.order
cond = false	
}
}


else if condition == 9{
if objPlayer.detal{
	if !objPlayer.detbroken{
cond = true	
	}else{
	objBlockCode.order = condend.order
cond = false		
	}
}else{
objBlockCode.order = condend.order
cond = false	
}
}

}else{
	
	
	if condition == 0{
if objPlayer.rplace{
cond = true	
}else{
objBlockCode.order = condend.order
cond = false	
}
}else if condition == 1{
if objPlayer.uplace{
cond = true	
}else{
objBlockCode.order = condend.order
cond = false	
}
}else if condition == 2{
if objPlayer.lplace{
cond = true	
}else{
objBlockCode.order = condend.order
cond = false	
}
}else if condition == 3{
if objPlayer.dplace{
cond = true	
}else{
objBlockCode.order = condend.order
cond = false	
}
}else if condition == 4{
if !objPlayer.rplace{
cond = true	
}else{
objBlockCode.order = condend.order
cond = false	
}
}else if condition == 5{
if !objPlayer.uplace{
cond = true	
}else{
objBlockCode.order = condend.order
cond = false	
}
}else if condition == 6{
if !objPlayer.lplace{
cond = true	
}else{
objBlockCode.order = condend.order
cond = false	
}
}else if condition == 7{
if !objPlayer.dplace{
cond = true	
}else{
objBlockCode.order = condend.order
cond = false	
}
}else if condition == 8{
if objBlockCode.fruits = objBlockCode.fruitsmax{
cond = true	
}else{
objBlockCode.order = condend.order
cond = false		
}
}


else if condition == 9{
if objBlockCode.milk = objBlockCode.milkmax{
cond = true	
}else{
objBlockCode.order = condend.order
cond = false		
}
}


else if condition == 10{
if objBlockCode.vegetables = objBlockCode.vegetablesmax{
cond = true	
}else{
objBlockCode.order = condend.order
cond = false		
}
}

else if condition == 11{
if objBlockCode.snacks = objBlockCode.snacksmax{
cond = true	
}else{
objBlockCode.order = condend.order
cond = false		
}
}
	
	
}


}
}else{

}
}

if y >= 0{
objBlockCode.blocks[order] = id
if instance_exists(condend){
objBlockCode.blocks[condend.order] = condend.id
}
}
if !instance_exists(condend){
instance_destroy()	
}else{
if mouse_over(){
condend.out = true	
}else{
condend.out = false	
}
}

