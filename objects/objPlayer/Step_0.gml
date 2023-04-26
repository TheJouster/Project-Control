/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
mask_index = sprPlayerHitbox
var left = keyboard_check(ord("A"))
var right = keyboard_check(ord("D"))
var up = keyboard_check(ord("W"))
var down = keyboard_check(ord("S"))

if tox != x{
if x < tox{
xmove = 1*spd
}else if x > tox{
xmove = -1*spd	
}else{
xmove = 0	
}
}

if toy != y{
if y < toy{
ymove = 1*spd
}else if y > toy{
ymove = -1*spd	
}else{
ymove = 0	
}
}

if within(x,tox,4){
x = tox	
hsp = 0
xmove = 0
}
if within(y,toy,4){
y = toy	
vsp = 0
ymove = 0
}



hsp = approach(hsp,xmove,acc*spd)

vsp = approach(vsp,ymove,acc*spd)

var arr = move_and_collide(hsp,vsp,objSolid)
if array_length(arr) != 0 and place_meeting(x+hsp,y+vsp,objSolid){
hsp = 0
vsp = 0
}

if hsp < 0{
sprite_index = sprPlayerRunning
image_xscale = -1
image_speed = 1
}else if hsp > 0{
sprite_index = sprPlayerRunning
image_xscale = 1
image_speed = 1
}else if vsp < 0{
sprite_index = sprPlayerRunningUp
image_xscale = 1
image_speed = 1
}else if vsp > 0{
sprite_index = sprPlayerRunningDown
image_xscale = 1
image_speed = 1
}else if vsp > 0 and (hsp < 0 or hsp > 0){
sprite_index = sprPlayerRunningDown
image_xscale = 1
image_speed = 1
}else if vsp < 0 and (hsp < 0 or hsp > 0){
sprite_index = sprPlayerRunningUp
image_xscale = 1
image_speed = 1
}else{
if hsp = 0 and vsp = 0{
	image_speed = 0
if sprite_index = sprPlayerRunningUp{
sprite_index = sprPlayerIdleUp	
}else if sprite_index = sprPlayerRunningDown{
sprite_index = sprPlayerIdleDown	
}else if sprite_index = sprPlayerRunning{
sprite_index = sprPlayerIdle	
}
}
}
if place_meeting(tox,toy,objWall){
objBlockCode.play = false
if x != xstart and y != ystart{
x = xstart
y = ystart
audio_play_sound(sndFail,1,0)
}
tox = xstart
toy = ystart


}
rplace = place_meeting(x+16,y,objSolid)
uplace = place_meeting(x,y-16,objSolid)
lplace = place_meeting(x-16,y,objSolid)
dplace = place_meeting(x,y+16,objSolid)
applace = place_meeting(x,y,objApple)
levplace = place_meeting(x,y,objLever)
detplace = place_meeting(x,y,objDetal1)
con1place = place_meeting(x,y,objTriggerCon1)
con2place = place_meeting(x,y,objTriggerCon2)
prod1place = place_meeting(x,y,objTriggerProd1)
prod2place = place_meeting(x,y,objTriggerProd2)
prod3place = place_meeting(x,y,objTriggerProd3)
prod4place = place_meeting(x,y,objTriggerProd4)
cassplace = place_meeting(x,y,objTriggerCass)
if !objBlockCode.play{
x = xstart
y = ystart
tox = xstart
toy = ystart
instance_activate_object(objItem)
if instance_exists(objLever){
lever.image_index = 0	

}
eaten = false
global.detal = 0
detal = false
instance_destroy(objDetal)
instance_destroy(objDetal1)
detbroken = false
producttype = 0
product = false
objBlockCode.fruits = 0
objBlockCode.milk = 0
objBlockCode.vegetables = 0
objBlockCode.snacks = 0
}

if room = Room147{
if y > 96{
depth = 100	
}else{
depth = 300	
}
}

if objBlockCode.fastmode{
spd = 4
}else{
spd = 1	
}