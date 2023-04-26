/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
event_inherited()

var gui_width = display_get_gui_width()
var gui_height = display_get_gui_height()



var view_width = camera_get_view_width(view_camera[0])
var view_height = camera_get_view_height(view_camera[0])

	var GUIyy = (y+4- camera_get_view_y(view_camera[0]))* (gui_width / view_width)
	
var GUIxx = (x+4 - camera_get_view_x(view_camera[0])) * (gui_height / view_height);


	var GUIy= (y- camera_get_view_y(view_camera[0]))* (gui_width / view_width)
	
var GUIx = (x - camera_get_view_x(view_camera[0])) * (gui_height / view_height);

 
  if drag{	
draw_sprite_ext(sprLoopUI,0,GUIx,GUIy,image_xscale,image_yscale,0,-1,1)	
}
 
draw_set_color(c_white)	
draw_set_font(fntGUI)
draw_set_valign(fa_middle)
draw_text_shadow(GUIxx,GUIyy,text,c_white,c_black,1)


draw_reset_text()