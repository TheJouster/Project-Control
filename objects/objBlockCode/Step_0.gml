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

if array_length(blocks) > instance_number(objBlock){
array_delete(blocks,instance_number(objBlock),array_length(blocks))
}
for (var i = 0;i<array_length(blocks);i++){
if place_free(room_width-8,8+(16*i)){
array_delete(blocks,i,1)	
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