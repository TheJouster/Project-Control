/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
if fastmode{
cooldown = 10	
}else{
cooldown = 60	
}
if play{
	global.yst = 0
if alarm[0] < 0{

alarm[0] = cooldown	
}
}

if order > instance_number(objBlock){
order = 0
play = false
}




for (var i = 0;i<array_length(blocks);i++){
	if drag_instance == noone{
		if instance_place(room_width-8,4+(8*i)+global.yst,objBlock) == noone{
			array_set(blocks,i,noone)
		}
	}
}




if drag_instance == noone{
	if instance_place(room_width-8,4+(8*array_length(blocks)-1)+global.yst,objBlock) == noone{
		array_delete(blocks,array_length(blocks)-1,1)
	}
}

if window_mouse_get_x() < display_get_gui_width()/2{
lt = true	
}else{
lt = false	
}
if restart = true{
restart = false
}


with(objBlock){
if image_xscale > other.maxwidth{
other.widthinstance = id
}
}

if widthinstance != noone{
if instance_exists(widthinstance){
maxwidth = widthinstance.image_xscale
}
}

if !instance_exists(objBlock){
maxwidth = 3	
}
if maxwidth < 2{
maxwidth = 3	
}

if room = Room14{
if global.detal = 5{
SlideTransition(TRANS_MODE.GOTO,Room56)	
}
}
if room = Room147{
if objBlockCode.fruits = objBlockCode.fruitsmax and objBlockCode.milk = objBlockCode.milkmax and objBlockCode.vegetables = objBlockCode.vegetablesmax and objBlockCode.snacks = objBlockCode.snacksmax{
SlideTransition(TRANS_MODE.GOTO,Room38)	
}
}
if room = Room145{
	if boxes = 10{
		SlideTransition(TRANS_MODE.GOTO,Room14)	
	}
}