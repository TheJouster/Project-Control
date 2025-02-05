/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
depth = -9999

var gui_width = display_get_gui_width()
var gui_height = display_get_gui_height()



var view_width = camera_get_view_width(view_camera[0])
var view_height = camera_get_view_height(view_camera[0])

	var GUIyy = (y-12- camera_get_view_y(view_camera[0]))* (gui_width / view_width)
	
var GUIxx = (x - camera_get_view_x(view_camera[0])) * (gui_height / view_height);


	var GUIy= (y- camera_get_view_y(view_camera[0]))* (gui_width / view_width)
	
var GUIx = (x - camera_get_view_x(view_camera[0])) * (gui_height / view_height);


 if !objBlockCode.play and !instance_exists(objCoolText)and !instance_exists(objTip){
draw_set_color(c_white)	
draw_set_font(fntGUI)
draw_set_valign(fa_middle)
draw_set_halign(fa_middle)
draw_text_shadow(GUIx,GUIyy,text,c_white,c_black,1)


draw_reset_text()
}