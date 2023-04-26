/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
camera = view_camera[0]
xTo = x
yTo = y
view_w_half  = camera_get_view_width(camera) * 0.5;
view_h_half = camera_get_view_height(camera) * 0.5;

shake_length = 0;
shake_magnitude = 0;
shake_remain = 0;

wshake_length = 0;
wshake_magnitude = 0;
wshake_remain = 0;

follow = id
creator = noone

srf_sky = -1

windowx  =0

windowy  =0

left = false
zz = 0
xx = 0
yy = 0