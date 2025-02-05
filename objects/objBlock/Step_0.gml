/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
if objBlockCode.drag_instance = noone{
	drag = false	
}

if array_length(c_objects) > 0{
			for (var i = 0; i < array_length(c_objects);i++){
				if instance_exists(c_objects[i]) and instance_exists(c_objects[i].loopend){
					if (order > c_objects[i].loopend.order or order < c_objects[i].order) or (y > c_objects[i].loopend.y or y < c_objects[i].y){
						array_delete(c_objects,i,1)
					}
				}else{
					array_delete(c_objects,i,1)	
				}
			}
			if array_contains(c_objects,id){
				array_delete(c_objects,array_get_index(c_objects,id),1)	
			}
		}
if drag
    {
	moving = true
	x = drag_x;
    y = drag_y;
	}else{
		
		toy = 8 * order 
		xx = array_length(c_objects)*4
		x = (room_width-16*image_xscale)-xx
		if y != toy{
			if y > toy{

			}else{

		}
	}
	y = toy+global.yst
	order = ((y+4)-global.yst) div 8
	
	}


if drag{
	if objBlockCode.drag_instance == id{
		if !place_meeting(x,y,objBlock){
			order = ((y+4)-global.yst) div 8	
			toy = 8 * order	
		}else{
			order = prevorder	
			toy = 8 * order	
		}
	}else{
		
	}
	
}

if place_meeting(x,y,objBlock){
	place = instance_place(x,y,objBlock)	
}else{
	place = noone
}

/*
if !drag{
	if moving{
		if place_meeting(x,y,objBlock){
			var block =instance_place(x,y,objBlock) 
				if block.drag == false{
				
			}
			
		}else{
		dr = false	
		}
	}
}
*/


if !drag{
	/*
	if place_meeting(x,y,objBlock){
		var inst = instance_place(x,y,objBlock)
			if inst.order == order{
				if inst.drag = false{
				for (var i = array_length(objBlockCode.blocks)-1; i > order-1; i--){
					if objBlockCode.blocks[i] != noone{
						var blck = objBlockCode.blocks[i]
						if instance_exists(blck){
							blck.y = 8*(blck.order+1)
							blck.toy = 8*(blck.order+1)
							blck.order+=1
						}
					}
				}
			}
		}
	}
	*/
}else{
depth = -9999	
}










if order < 0{
order = 0	
}