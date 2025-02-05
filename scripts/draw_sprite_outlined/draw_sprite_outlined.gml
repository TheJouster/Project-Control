/// @description draw_sprite_outlined(sprite, subimg, x, y, xscale, yscale, ang, colour, outline_colour, [outline_width])
/// @param sprite
/// @param  subimg
/// @param  x
/// @param  y
/// @param  xscale
/// @param  yscale
/// @param  ang
/// @param  colour
/// @param  alpha
/// @param  outline_colour
/// @param  [outline_width]
function draw_sprite_outlined(spr, img, xx, yy, xs, ys, ang, col, alp, ocol, owid = xs) {

	gpu_set_fog(1,ocol,0,1)
	if owid == xs{
		draw_sprite_ext(spr, img, xx-xs, yy, xs, ys, ang, ocol, alp);
		draw_sprite_ext(spr, img, xx+xs, yy, xs, ys, ang, ocol, alp);
		draw_sprite_ext(spr, img, xx, yy-ys, xs, ys, ang, ocol, alp);
		draw_sprite_ext(spr, img, xx, yy+ys, xs, ys, ang, ocol, alp);
	}else{
		draw_sprite_ext(spr, img, xx-owid, yy, xs, ys, ang, ocol, alp);
		draw_sprite_ext(spr, img, xx+owid, yy, xs, ys, ang, ocol, alp);
		draw_sprite_ext(spr, img, xx, yy-owid, xs, ys, ang, ocol, alp);
		draw_sprite_ext(spr, img, xx, yy+owid, xs, ys, ang, ocol, alp);
	}
	gpu_set_fog(0,c_white,0,0)


	draw_sprite_ext(spr, img, xx, yy, xs, ys, ang, col, alp);

	


}
/// @description draw_self_outlined(outline_colour, [outline_width])
/// @param  outline_colour
/// @param  [outline_width]
function draw_self_outlined(ocol, os = xs,outline = false) {
	var spr = sprite_index;
	var img = image_index;
	var xx = x;
	var yy = y;
	var xs = image_xscale;
	var ys = image_yscale;
	var ang = image_angle;
	var col = image_blend;
	var alp = image_alpha;
	if !outline{
	gpu_set_fog(1,ocol,0,1)
	}
	if os == xs{
		draw_sprite_ext(spr, img, xx-xs, yy, xs, ys, ang, ocol, alp);
		draw_sprite_ext(spr, img, xx+xs, yy, xs, ys, ang, ocol, alp);
		draw_sprite_ext(spr, img, xx, yy-ys, xs, ys, ang, ocol, alp);
		draw_sprite_ext(spr, img, xx, yy+ys, xs, ys, ang, ocol, alp);
	}else{
		draw_sprite_ext(spr, img, xx-os, yy, xs, ys, ang, ocol, alp);
		draw_sprite_ext(spr, img, xx+os, yy, xs, ys, ang, ocol, alp);
		draw_sprite_ext(spr, img, xx, yy-os, xs, ys, ang, ocol, alp);
		draw_sprite_ext(spr, img, xx, yy+os, xs, ys, ang, ocol, alp);
	}
	if !outline{
	gpu_set_fog(0,c_white,0,0)
	}

		draw_sprite_ext(spr, img, xx, yy, xs, ys, ang, col, alp);	





}
