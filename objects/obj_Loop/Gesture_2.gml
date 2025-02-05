/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
	if objBlockCode.drag_instance == noone{
	objBlockCode.drag_instance = id;
	}
	objBlockCode.blocks[order] = noone
	prevorder = order
    drag = true;
    var _xx = event_data[?"posX"];
    var _yy = event_data[?"posY"];
    drag_x = x;
    drag_y = y;
    drag_offset_x = drag_x - _xx;
    drag_offset_y = drag_y - _yy;
audio_play_sound(sndPop1,1,0)
if objBlockCode.drag_instance = id{
	if instance_exists(loopend){
			if loopend.order > order{
				for (var i = order+1; i < loopend.order;i++){
					if instance_exists(objBlockCode.blocks[i]){
						if objBlockCode.blocks[i] != loopend and objBlockCode.blocks[i] != id{
							array_push(drag_objects,objBlockCode.blocks[i])
							objBlockCode.blocks[i].drag = true
							objBlockCode.blocks[i].dx = (-objBlockCode.blocks[i].xx)+(16*image_xscale-(16*objBlockCode.blocks[i].image_xscale))
							objBlockCode.blocks[i].dy = (8*(i-order))
							objBlockCode.blocks[i].prevorder = objBlockCode.blocks[i].order
							objBlockCode.blocks[objBlockCode.blocks[i].order] = noone
						}
					}
				}
				loopend.drag = true
				loopend.dx = (16*image_xscale-(16*loopend.image_xscale))
				loopend.dy = (8*(loopend.order-order))
				loopend.prevorder = loopend.order
				objBlockCode.blocks[loopend.order] = noone
			}
		
	}
}