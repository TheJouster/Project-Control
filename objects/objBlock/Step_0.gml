/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
if drag
    {
moving = true
	x = drag_x;
    y = drag_y;
	}else{
		x = approach(x,room_width-16*image_xscale,4)
	if y != toy{
	if y > toy{

	}else{

	}
	}
	y = toy+global.yst

	}



order = ((y+4)-global.yst) div 8


if !drag{
if moving{
if place_meeting(x,y,objBlock){
var block =instance_place(x,y,objBlock) 
if block.drag == false{
if block.y = y{
if !block.move{
dr = true	
block.order+=1
block.toy+=8
}
}
}
}else{
dr = false	
}
}
}


toy = 8 * order

if !drag{
if place_meeting(x,y+4,objBlock){
var inst = instance_place(x,y+4,objBlock)
if inst.order == order{
if inst.drag = false{
inst.order+=1
depth = -999
}
}
}
}else{
depth = -9999	
}


if y <= global.yst{
y = global.yst	
}
y = clamp(y,global.yst,infinity)

if order < 0{
order = 0	
}