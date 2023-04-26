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
draw_text_outlined(display_get_gui_width()/2,48,string(global.detal)+"/5 Деталей",c_white,c_black)	
draw_reset_text()
}

if room = Room147{
	draw_sprite_ext(sprPaper,0,display_get_gui_width()/2,144,6,6,-5,-1,1)
	draw_set_halign(fa_center)
	draw_set_valign(fa_center)
	draw_set_color(c_black)
	draw_set_font(fntDrawn)
draw_text(display_get_gui_width()/2,96,string(milk) + "/" + string(milkmax)+" Молока")
if milk = milkmax{
draw_line((display_get_gui_width()/2)-64,100,(display_get_gui_width()/2)+64,100)
}
draw_text(display_get_gui_width()/2,128,string(vegetables) + "/" + string(vegetablesmax)+" Овощей")
if vegetables = vegetablesmax{
draw_line((display_get_gui_width()/2)-64,132,(display_get_gui_width()/2)+64,132)
}
draw_text(display_get_gui_width()/2,160,string(fruits) + "/" + string(fruitsmax)+" Фруктов")
if fruits = fruitsmax{
draw_line((display_get_gui_width()/2)-64,164,(display_get_gui_width()/2)+64,164)
}
draw_text(display_get_gui_width()/2,192,string(snacks) + "/" + string(snacksmax)+" Снеков")
if snacks = snacksmax{
draw_line((display_get_gui_width()/2)-64,196,(display_get_gui_width()/2)+64,196)
}
draw_reset_text()
}