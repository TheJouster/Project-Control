/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
if !instance_exists(objTransition){
instance_create_depth(x,y,0,objTransition)	
}
if room = Room1{
depth = 500
}else if room = Room14{
depth = 0
}
hsp = 0
vsp = 0
spd = 1
acc = 0.2
xmove = 0
ymove = 0
sprite = sprite_index
tox = x
toy = y
dir = 1
rplace = 0
uplace = 0
lplace = 0
dplace = 0
applace = 0
levplace = 0
detplace = 0
con1place = 0
con2place = 0
prod1place = 0
prod2place = 0
prod3place = 0
prod4place = 0
cassplace = 0
boxplace = 0
truckplace = 0
detal = false
box = false
detbroken = false
eaten = false
producttype = 0
product = false