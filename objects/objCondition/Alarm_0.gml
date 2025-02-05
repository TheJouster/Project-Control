/// @description Insert description here
// You can write your code in this editor

var cond1 = instance_create_depth(room_width-16*image_xscale,(8*(order+1))+global.yst,-999,objConditionEnd)
cond1.toy = 8*(order+1)
cond1.order = (order+1)
cond1.creator = id
loopend = cond1
