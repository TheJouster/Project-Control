/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
/*
draw_text(16,16,array_length(blocks))
draw_text(16,64,(8*array_length(blocks))+global.yst)
draw_text(16,112,instance_number(objBlock))
/*
draw_set_color(c_black)
draw_rectangle(display_get_gui_width()-256,0,display_get_gui_width(),display_get_gui_height(),0)
*/
if room = Room14{
	draw_set_halign(fa_center)
	draw_set_valign(fa_center)
	draw_set_color(c_white)
	draw_set_font(fntGUI)
draw_text_outlined(display_get_gui_width()/2,96,string(global.detal)+"/5 Деталей",c_white,c_black)	
draw_reset_text()
}

if room = Room147{
	if !play{
	draw_sprite_ext(sprPaper,0,display_get_gui_width()/3,144-32,6,6,-5,-1,1)
	draw_set_halign(fa_center)
	draw_set_valign(fa_center)
	draw_set_color(c_black)
	draw_set_font(fntDrawn)
draw_text(display_get_gui_width()/3,96-32,string(milk) + "/" + string(milkmax)+" Молока")
if milk = milkmax{
draw_line((display_get_gui_width()/3)-64,100-32,(display_get_gui_width()/2)+64,100-32)
}
draw_text(display_get_gui_width()/3,128-32,string(vegetables) + "/" + string(vegetablesmax)+" Овощей")
if vegetables = vegetablesmax{
draw_line((display_get_gui_width()/3)-64,132-32,(display_get_gui_width()/2)+64,132-32)
}
draw_text(display_get_gui_width()/3,160-32,string(fruits) + "/" + string(fruitsmax)+" Фруктов")
if fruits = fruitsmax{
draw_line((display_get_gui_width()/3)-64,164-32,(display_get_gui_width()/2)+64,164-32)
}
draw_text(display_get_gui_width()/3,192-32,string(snacks) + "/" + string(snacksmax)+" Снеков")
if snacks = snacksmax{
draw_line((display_get_gui_width()/3)-64,196-32,(display_get_gui_width()/2)+64,196-32)
}
draw_reset_text()
	}else{
		draw_sprite_ext(sprPaper,0,128,144-32,6,6,-5,-1,1)
	draw_set_halign(fa_center)
	draw_set_valign(fa_center)
	draw_set_color(c_black)
	draw_set_font(fntDrawn)
draw_text(128,96-32,string(milk) + "/" + string(milkmax)+" Молока")
if milk = milkmax{
draw_line((128)-64,100-32,(128)+64,100-32)
}
draw_text(128,128-32,string(vegetables) + "/" + string(vegetablesmax)+" Овощей")
if vegetables = vegetablesmax{
draw_line((128)-64,132-32,(128)+64,132-32)
}
draw_text(128,160-32,string(fruits) + "/" + string(fruitsmax)+" Фруктов")
if fruits = fruitsmax{
draw_line((128)-64,164-32,(128)+64,164-32)
}
draw_text(128,192-32,string(snacks) + "/" + string(snacksmax)+" Снеков")
if snacks = snacksmax{
draw_line((128)-64,196-32,(128)+64,196-32)
}
draw_reset_text()
	}
}

if room = Room145{
	if play{
		draw_sprite_outlined(sprBox1,0,64,96,4,4,0,-1,1,c_black)	
		draw_set_halign(fa_center)
		draw_set_valign(fa_center)
		draw_set_color(c_white)
		draw_set_font(fntGUIMedium)
		draw_text(64,144,$"{boxes}/10")
		draw_reset_text()
	}
}

if room = Room14{
	if play{
		draw_sprite_outlined(sprDetal,0,64,64,4,4,0,-1,1,c_black)	
		draw_set_halign(fa_center)
		draw_set_valign(fa_center)
		draw_set_color(c_white)
		draw_set_font(fntGUIMedium)
		draw_text(64,128,$"{global.detal}/5")
		draw_reset_text()
	}
}

/*
draw_text(16,16,array_length(blocks))

for (var i = 0; i < array_length(blocks); i++){
	draw_text(16,64+(32*i),blocks[i])
}