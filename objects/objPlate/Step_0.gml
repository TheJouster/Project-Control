/// @description Insert description here
// You can write your code in this editor
if place_meeting(x,y,objPlayer){
	if image_index != 1{
		if !objBlockCode.fastmode{
			if alarm[0] < 0{
				alarm[0] = 30	
			}
		}else{
			if alarm[0] < 0{
				alarm[0] = 5	
			}
		}
		image_index = 1	
	}
}else{
	image_index = 0	
}