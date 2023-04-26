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






if instance_exists(condend){
if objBlockCode.play{
if objBlockCode.order = order{
if condition == 0{
if objPlayer.rplace{
cond = true	
}else{
objBlockCode.order = condend.order+1
cond = false	
}
}else if condition == 1{
if objPlayer.uplace{
cond = true	
}else{
objBlockCode.order = condend.order+1
cond = false	
}
}else if condition == 2{
if objPlayer.lplace{
cond = true	
}else{
objBlockCode.order = condend.order+1
cond = false	
}
}else if condition == 3{
if objPlayer.dplace{
cond = true	
}else{
objBlockCode.order = condend.order+1
cond = false	
}
}else if condition == 4{
if !objPlayer.rplace{
cond = true	
}else{
objBlockCode.order = condend.order+1
cond = false	
}
}else if condition == 5{
if !objPlayer.uplace{
cond = true	
}else{
objBlockCode.order = condend.order+1
cond = false	
}
}else if condition == 6{
if !objPlayer.lplace{
cond = true	
}else{
objBlockCode.order = condend.order+1
cond = false	
}
}else if condition == 7{
if !objPlayer.dplace{
cond = true	
}else{
objBlockCode.order = condend.order+1
cond = false	
}
}else if condition == 8{
if objBlockCode.fruits != objBlockCode.fruitsmax and objBlockCode.milk != objBlockCode.milkmax and objBlockCode.vegetables != objBlockCode.vegetablesmax and objBlockCode.snacks != objBlockCode.snacksmax{
cond = true	
}else{
objBlockCode.order = condend.order+1
cond = false	
}
}else if condition == 9{
if objBlockCode.fruits != objBlockCode.fruitsmax{
cond = true	
}else{
objBlockCode.order = condend.order+1
cond = false	
}
}else if condition == 10{
if objBlockCode.milk != objBlockCode.milkmax{
cond = true	
}else{
objBlockCode.order = condend.order+1
cond = false	
}
}else if condition == 11{
if objBlockCode.vegetables != objBlockCode.vegetablesmax{
cond = true	
}else{
objBlockCode.order = condend.order+1
cond = false	
}
}else if condition == 12{
if objBlockCode.snacks != objBlockCode.snacksmax{
cond = true	
}else{
objBlockCode.order = condend.order+1
cond = false	
}
}
}
}else{

}
}



if condition > conditioncount{
condition = 0	
}
if condition < 0{
condition = conditioncount	
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

