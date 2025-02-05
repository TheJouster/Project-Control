/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
draw_self_outlined(c_black,1)

if detal{
	if sprite_index = sprPlayerRunning or sprite_index = sprPlayerIdle{
		if image_xscale < 0{
			if !detbroken{
				draw_sprite_outlined(sprDetal,0,x-8,y+8,1,1,0,-1,1,c_black)
			}else{
				draw_sprite_outlined(sprDetalBroken,0,x-8,y+8,1,1,0,-1,1,c_black)
			}
		}else if image_xscale > 0{
			if !detbroken{
				draw_sprite_outlined(sprDetal,0,x+8,y+8,1,1,0,-1,1,c_black)
			}else{
				draw_sprite_outlined(sprDetalBroken,0,x+8,y+8,1,1,0,-1,1,c_black)
			}	
		}
	}else if sprite_index = sprPlayerRunningDown or sprite_index = sprPlayerIdleDown{
		if !detbroken{
			draw_sprite_outlined(sprDetal,0,x,y+8+8,1,1,0,-1,1,c_black)
		}else{
			draw_sprite_outlined(sprDetalBroken,0,x,y+8+8,1,1,0,-1,1,c_black)
		}	
	}else if sprite_index = sprPlayerRunningUp or sprite_index = sprPlayerIdleUp{
		if !detbroken{
			draw_sprite_outlined(sprDetal,0,x,y-8,1,1,0,-1,1,c_black)
		}else{
			draw_sprite_outlined(sprDetalBroken,0,x,y-8,1,1,0,-1,1,c_black)
		}	
		draw_self_outlined(c_black,1)
	}
}

if box{
	if sprite_index = sprPlayerRunning or sprite_index = sprPlayerIdle{
		if image_xscale < 0{
			draw_sprite_outlined(sprBox1,0,x-12,y+16,1,1,0,-1,1,c_black)
		}else if image_xscale > 0{
			draw_sprite_outlined(sprBox1,0,x+12,y+16,1,1,0,-1,1,c_black)
		}
	}else if sprite_index = sprPlayerRunningDown or sprite_index = sprPlayerIdleDown{
		draw_sprite_outlined(sprBox1,0,x,y+16+8,1,1,0,-1,1,c_black)	
	}else if sprite_index = sprPlayerRunningUp or sprite_index = sprPlayerIdleUp{
		draw_sprite_outlined(sprBox1,0,x,y,1,1,0,-1,1,c_black)
		draw_self_outlined(c_black,1)
	}
}