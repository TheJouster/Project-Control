/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
camera = view_camera[0]
var width  = camera_get_view_width(camera);
var height  = camera_get_view_height(camera);



xTo = objPlayer.x	
yTo = objPlayer.y	


x += (xTo-x)/15
y += (yTo-y)/15

view_w_half  = camera_get_view_width(camera) * 0.5;
view_h_half = camera_get_view_height(camera) * 0.5;
if keyboard_check_pressed(vk_f11){
window_set_fullscreen(!window_get_fullscreen())	
}


camera_set_view_target(camera,id)

camera_set_view_pos(camera,x-view_w_half,y-view_h_half);





x = floor(x*10)/10
y = floor(y*10)/10

x+= random_range(-shake_remain,shake_remain)
y+= random_range(-shake_remain,shake_remain)
shake_remain = max(0,shake_remain-((1/shake_length)*shake_magnitude));



