/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе


if keyboard_check_pressed(vk_enter){
	if chosedline = linecount{
linecount++
keyboard_string = ""
text[linecount] = ""
chosedline = linecount
}else{
		
	linecount++
	chosedline ++
	keyboard_string = ""
	array_insert(text,chosedline,"")
	}
}

if keyboard_check_pressed(vk_up){
	if chosedline > 1{
	keyboard_string = text[chosedline-1]
chosedline --

	}else{
		keyboard_string = text[linecount]
	chosedline = linecount	
	}
}

if keyboard_check_pressed(vk_down){
	if chosedline < linecount{
		keyboard_string = text[chosedline+1]
chosedline ++
	}else{
		keyboard_string = text[1]
	chosedline = 1	
	}
}
if text[chosedline]	= ""{
if keyboard_check(vk_backspace){
	if text[chosedline]	= ""{
		if canback{
			if cset = true{
	backsp = true
			}
		}
if alarm[0] < 0{
alarm[0] = 30	
}
	}
	
}else{

	
	cset = false
	
	canback = true
	
	    backsp = false	
text[chosedline] = keyboard_string;	
}
}
if text[chosedline]	= ""{
if cooldown> 0{

cooldown--	
}else{
canback = true	
}
}


if backsp{
	if chosedline > 1{
		if chosedline = linecount{
if text[chosedline]	= ""{
text[chosedline-1]	= text[linecount-1]
keyboard_string = text[linecount-1]
linecount--
backsp = false
}
		}else{
		if text[chosedline]	= ""{

for (var i = chosedline;i < linecount;i++){
text[i]	= text[i+1]
keyboard_string = text[i]
}



linecount--

backsp = false
}	
		}
	}
}else{
text[chosedline] = keyboard_string;	
}

if chosedline > linecount{
chosedline = linecount	
}



