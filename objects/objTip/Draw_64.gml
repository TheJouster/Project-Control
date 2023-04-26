/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
draw_set_color(c_black)
draw_set_alpha(0.75)
draw_rectangle(display_get_gui_width()/2-160,240,display_get_gui_width()/2+160,560,0)

draw_reset_text()
draw_set_font(fntGUI)
draw_set_color(c_white)
if tip = 0{
	draw_set_valign(fa_center)
	draw_set_halign(fa_center)
draw_text_ext(display_get_gui_width()/2,420,"Действие \n \n Этот блок выполняет выбранную команду 1 раз",24,296)	
draw_sprite_ext(sprMoveUI,0,display_get_gui_width()/2-60,280,2,1,0,-1,1)	

draw_reset_text()
 
draw_set_color(c_white)	
draw_set_font(fntGUI)
draw_set_valign(fa_middle)
draw_text_shadow(display_get_gui_width()/2-45,295,"Действие",c_white,c_black,1)


draw_reset_text()
}else if tip = 1{
	draw_set_valign(fa_center)
	draw_set_halign(fa_center)
draw_text_ext(display_get_gui_width()/2,420,"Цикл \n \n Заключенные между этими блоками команды будут выполняться X раз. Установите X на 0, чтобы повторять постоянно.",24,296)	
draw_sprite_ext(sprLoopUI,0,display_get_gui_width()/2-80,280,2.5,1,0,-1,1)	

draw_reset_text()
 
draw_set_color(c_white)	
draw_set_font(fntGUI)
draw_set_valign(fa_middle)
draw_text_shadow(display_get_gui_width()/2-65,295,"Сделать X раз",c_white,c_black,1)


draw_reset_text()
}else if tip = 2{
	draw_set_valign(fa_center)
	draw_set_halign(fa_center)
draw_text_ext(display_get_gui_width()/2,420,"Если 'Условие', то \n \n Заключенные между этими блоками команды выполнятся если условие соблюдено.",24,296)	
draw_sprite_ext(sprConditionUI,0,display_get_gui_width()/2-100,280,3.25,1,0,-1,1)	

draw_reset_text()
 
draw_set_color(c_white)	
draw_set_font(fntGUI)
draw_set_valign(fa_middle)
draw_text_shadow(display_get_gui_width()/2-85,295,"Если 'условие', то",c_white,c_black,1)


draw_reset_text()
}else if tip = 3{
	draw_set_valign(fa_center)
	draw_set_halign(fa_center)
draw_text_ext(display_get_gui_width()/2,420,"Пока 'Условие', то \n \n Заключенные между этими блоками команды выполняются пока условие соблюдается.",24,296)	
draw_sprite_ext(sprCheckUI,0,display_get_gui_width()/2-100,280,3.25,1,0,-1,1)	

draw_reset_text()
 
draw_set_color(c_white)	
draw_set_font(fntGUI)
draw_set_valign(fa_middle)
draw_text_shadow(display_get_gui_width()/2-85,295,"Пока 'условие', то",c_white,c_black,1)


draw_reset_text()
}

draw_reset_text()