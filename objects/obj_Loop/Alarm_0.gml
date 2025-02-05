/// @description Insert description here
// You can write your code in this editor
if loopend == noone{
	var loop1 = instance_create_depth(room_width-16*image_xscale,(8*(order+1))+global.yst,-999,objEndLoop)

	loop1.order = (order+1)
	loop1.toy = 8*(order+1)
	loop1.y = (8*(order+1))+global.yst
	loop1.creator = id
	loopend = loop1
}