/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
drag = false;

if objBlockCode.drag_instance = id{
	if array_length(drag_objects) > 0{
		var drag_place = [];

		for (var i = 0; i < array_length(drag_objects);i++){
			if instance_exists(drag_objects[i]){
				if drag_objects[i].place != noone and !drag_objects[i].place.drag{
						array_push(drag_place,true)
					}else{
						array_push(drag_place,false)
					}
			}
		}
		if !array_contains(drag_place,true) and !(loopend.place != noone and loopend.place.drag != false){
			for (var i = 0; i < array_length(drag_objects);i++){
				if instance_exists(drag_objects[i]){
					drag_objects[i].drag = false
					drag_objects[i].dx = 0
					drag_objects[i].dy = 0	
					drag_objects[i].order = order+i+1		
					
				}
			}	
			drag_objects = []
		}else{
			order = prevorder	
			y = (8 * order)+global.yst
			toy = (8 * order)+global.yst
			for (var i = 0; i < array_length(drag_objects);i++){
				if instance_exists(drag_objects[i]){
					drag_objects[i].drag = false
					drag_objects[i].dx = 0
					drag_objects[i].dy = 0	
					drag_objects[i].order = drag_objects[i].prevorder
					drag_objects[i].y = (8 * drag_objects[i].order)+global.yst
					drag_objects[i].toy = (8 * drag_objects[i].order)+global.yst
					
				}
			}	
			drag_objects = []
			loopend.order = loopend.prevorder	
			loopend.y = (8 * loopend.order)+global.yst
			loopend.toy = (8 * loopend.order)+global.yst
		}
	}
	if instance_exists(loopend){
		if loopend.order > order{	
			loopend.drag = false
			loopend.dx = 0
			loopend.dy = 0
		}
		
	}
}
if objBlockCode.drag_instance == id{
	objBlockCode.drag_instance = noone;
}

if place_meeting(x,y,objBlock) or y-global.yst < 0{
	order = prevorder	
	y = (8 * order)+global.yst
	toy = (8 * order)+global.yst
	if instance_exists(loopend){
		if loopend.order > order{	
			if loopend.drag{
				loopend.order = loopend.prevorder	
				loopend.y = (8 * loopend.order) +global.yst
				loopend.toy = (8 * loopend.order) +global.yst
			}
		}
	}
	if objBlockCode.drag_instance = id{
		if array_length(drag_objects) > 0{
			for (var i = 0; i < array_length(drag_objects);i++){
				if instance_exists(drag_objects[i]){
					drag_objects[i].drag = false
					drag_objects[i].dx = 0
					drag_objects[i].dy = 0	
					drag_objects[i].order = drag_objects[i].prevorder
					drag_objects[i].y = (8 * drag_objects[i].order)+global.yst
					drag_objects[i].toy = (8 * drag_objects[i].order)+global.yst
				}
			}	
			drag_objects = []
		}
	}
}else{
	
	
}

