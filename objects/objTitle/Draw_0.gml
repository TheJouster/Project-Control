/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
draw_set_halign(fa_center)
draw_set_valign(fa_center)
draw_set_color(c_white)
draw_set_font(fntGUIMedium)
draw_set_alpha(alp1)
if room = Room3{
draw_text(display_get_gui_width()/2,128,"Здравствуйте!")
}else{
draw_text(display_get_gui_width()/2,128,"Поздравляем!")	
}
draw_reset_text()

draw_set_halign(fa_center)
draw_set_valign(fa_center)
draw_set_color(c_white)
draw_set_font(fntGUI)
draw_set_alpha(alp2)
if room = Room3{
draw_text(display_get_gui_width()/2,192,"Вы были приглашены на тестирование новой революционной технологии нейро-программирования Project: Control.")
}else{
draw_text(display_get_gui_width()/2,192,"Вы успешно прошли демонстрационный вариант новой революционной технологии нейро-программирования Project: Control!")	
}
draw_reset_text()

draw_set_halign(fa_center)
draw_set_valign(fa_center)
draw_set_color(c_white)
draw_set_font(fntGUI)
draw_set_alpha(alp3)
if room = Room3{
draw_text_ext(display_get_gui_width()/2,224,"Данная технология была введена с целью автоматизировать работу человека, чтобы избежать ошибок, \n которые могут быть совершены человеком случайно.",24,1280)
}else{
draw_text_ext(display_get_gui_width()/2,224,"В скором времени, данная технология будет доступна каждому!",24,1280)	
}
draw_reset_text()

draw_set_halign(fa_center)
draw_set_valign(fa_center)
draw_set_color(c_white)
draw_set_font(fntGUI)
draw_set_alpha(alp4)
if room = Room3{
draw_text(display_get_gui_width()/2,256,"Вашей задачей будет запрограммировать целый рабочий день одного из наших добровольцев.")
}else{
draw_text(display_get_gui_width()/2,256,"Ваше имя будет вписано в список людей, которые помогали в разработке этой новой революционной технологии!")	
}
draw_reset_text()

draw_set_halign(fa_center)
draw_set_valign(fa_center)
draw_set_color(c_white)
draw_set_font(fntGUI)
draw_set_alpha(alp5)
if room = Room3{
draw_text(display_get_gui_width()/2,288,"Вся его жизнь в ваших руках. Смотрите не убейте его!")
}else{
draw_text(display_get_gui_width()/2,288,"Желаем вам удачи в будущем, и помните: Наука - это будущее.")	
}
draw_reset_text()