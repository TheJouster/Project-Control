/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
randomize()
play = false
order = 0
blocks = []

alarm[1] = 10

global.yst = 0
global.yel = make_color_rgb(255,248,153)
global.detal = 0
lt = false
fastmode = false
cooldown = 60
restart = false
maxwidth = 3
depth = -500
if !instance_exists(objCursor){
instance_create_depth(0,0,0,objCursor)	
}
snacks = 0
snacksmax = irandom_range(3,5)
milk = 0
milkmax = irandom_range(3,5)
vegetables = 0
vegetablesmax = irandom_range(3,5)
fruits = 0
fruitsmax = irandom_range(3,5)
widthinstance = noone

boxes = 0
drag_instance = noone