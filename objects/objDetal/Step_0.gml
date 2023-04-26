/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
if broken{
sprite_index = sprDetalBroken	
}else{
sprite_index = sprDetal
}
if place_meeting(x,y,objConveyor){
var conv = instance_place(x,y,objConveyor)
if conv.image_angle = -90{
x = conv.x-8
y+=0.5*objPlayer.spd
}
if conv.image_angle = 90{
x = conv.x+8
y-=0.5*objPlayer.spd
}
}
if place_meeting(x,y,objChest){
var detal = instance_create_depth(objChest.x,objChest.y,depth,objDetal1)
detal.broken = broken
instance_destroy()
}

if place_meeting(x,y,objTriggerCon11){
	if broken = false{
instance_destroy()	
global.detal ++
lever.image_index = 0
	}else{
		objBlockCode.play = false	
		lever.image_index = 0
	}
}

if place_meeting(x,y,objTriggerCon21){
	if broken = true{
instance_destroy()	
lever.image_index = 0
	}else{
		objBlockCode.play = false	
		lever.image_index = 0
	}
}