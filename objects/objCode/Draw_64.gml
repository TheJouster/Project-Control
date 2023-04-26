/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе


draw_set_color(c_black)
draw_rectangle(display_get_gui_width()-384,0,display_get_gui_width(),display_get_gui_height(),0)

for(var i = 0; i < linecount;i++){
		draw_set_font(fntGUI)
	draw_set_color(c_white)
	draw_text(display_get_gui_width()-368,12+32*i,text[i+1])
	draw_reset_text()
	if chosedline = i+1{
		draw_set_color(c_ltgray)
	}else{
	draw_set_color(c_gray)	
	}

draw_rectangle(display_get_gui_width()-384,32+32*i,display_get_gui_width(),32+32*i+2,0)

}



draw_reset_text()





