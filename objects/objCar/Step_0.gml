/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
if !instance_exists(objTransition){
instance_create_depth(x,y,0,objTransition)	
}
depth = -200
if x != tox{
x = approach(x,tox,1)	
}else{
if alarm[0] < 0{
alarm[0] = 120	
}
if strange{
if room = Room56{
if alarm[1] < 0{
alarm[1] = 30	
}
if alarm[2] < 0{
alarm[2] = 60	
}
if y != ystart{
if alarm[3] < 0{
alarm[3] = 5	
}
}
image_angle+= rspeed
}
}
}

if room = Room5{
if x >= room_width+96{

SlideTransition(TRANS_MODE.GOTO,Room14)	

}
if x > room_width+32{
if strange{
if !instance_exists(objCar1){
instance_create_depth(x,y,depth,objCar1)
instance_create_depth(x+32,y-96,depth,objTruck)
image_alpha = 0
}
}
}
}else{
if x <= -96{

SlideTransition(TRANS_MODE.GOTO,Room147)	

}	
}