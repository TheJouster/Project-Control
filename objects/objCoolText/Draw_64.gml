/// @description Insert description here
// You can write your code in this editor



draw_sprite_ext(sprBlackRectangle,0,640,360,1,1,0,-1,alpha/2)

draw_set_font(fntGUIXXL)
draw_set_color(c_white)
draw_set_valign(fa_center)
draw_set_halign(fa_middle)
draw_set_alpha(alpha)
draw_text_outline(640,360,header,6,c_black,32)
draw_reset_text()

draw_set_font(fntGUI)
draw_set_color(c_yellow)
draw_set_valign(fa_center)
draw_set_halign(fa_middle)
draw_set_alpha(alpha)
draw_text_outline(640,420,desc,6,c_black,32)
draw_reset_text()




