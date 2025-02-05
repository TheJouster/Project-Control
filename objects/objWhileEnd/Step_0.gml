/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
event_inherited()



image_xscale = ((string_width(text)+32)/64)


	



	
if loop < 1{
loop = 1	
}



if creator != noone{
if instance_exists(creator){
if objBlockCode.play{
if objBlockCode.order = order{
if creator.condition == 0{
if objPlayer.rplace{
	for (var i = creator.order+1; i < order;i++ ){
objBlockCode.blocks[i].completed = false	
objBlockCode.blocks[i].looped = 0
}
	objBlockCode.order = creator.order
cond = true	
}else{

cond = false	
}
}else if creator.condition == 1{
if objPlayer.uplace{
	for (var i = creator.order+1; i < order;i++ ){
objBlockCode.blocks[i].completed = false	
objBlockCode.blocks[i].looped = 0
}
	objBlockCode.order = creator.order
cond = true	
}else{

cond = false	
}
}else if creator.condition == 2{
if objPlayer.lplace{
cond = true	
for (var i = creator.order+1; i < order;i++ ){
objBlockCode.blocks[i].completed = false	
objBlockCode.blocks[i].looped = 0
}
objBlockCode.order = creator.order
}else{

cond = false	
}
}else if creator.condition == 3{
if objPlayer.dplace{
cond = true	
for (var i = creator.order+1; i < order;i++ ){
objBlockCode.blocks[i].completed = false	
objBlockCode.blocks[i].looped = 0
}
objBlockCode.order = creator.order
}else{

cond = false	
}
}else if creator.condition == 4{
if !objPlayer.rplace{
cond = true	
for (var i = creator.order+1; i < order;i++ ){
objBlockCode.blocks[i].completed = false	
objBlockCode.blocks[i].looped = 0
}
objBlockCode.order = creator.order
}else{

cond = false	
}
}else if creator.condition == 5{
if !objPlayer.uplace{
cond = true	
for (var i = creator.order+1; i < order;i++ ){
objBlockCode.blocks[i].completed = false	
objBlockCode.blocks[i].looped = 0
}
objBlockCode.order = creator.order
}else{

cond = false	
}
}else if creator.condition == 6{
if !objPlayer.lplace{
cond = true	
for (var i = creator.order+1; i < order;i++ ){
objBlockCode.blocks[i].completed = false	
objBlockCode.blocks[i].looped = 0
}
objBlockCode.order = creator.order
}else{

cond = false	
}
}

else if creator.condition == 7{
if !objPlayer.dplace{
cond = true
for (var i = creator.order+1; i < order;i++ ){
objBlockCode.blocks[i].completed = false	
objBlockCode.blocks[i].looped = 0
}
objBlockCode.order = creator.order
}else{

cond = false	
}
}

else if creator.condition == 8{
if objBlockCode.fruits != objBlockCode.fruitsmax and objBlockCode.milk != objBlockCode.milkmax and objBlockCode.vegetables != objBlockCode.vegetablesmax and objBlockCode.snacks != objBlockCode.snacksmax{
cond = true
for (var i = creator.order+1; i < order;i++ ){
objBlockCode.blocks[i].completed = false	
objBlockCode.blocks[i].looped = 0
}
objBlockCode.order = creator.order
}else{

cond = false	
}
}

else if creator.condition == 9{
if objBlockCode.fruits != objBlockCode.fruitsmax{
cond = true
for (var i = creator.order+1; i < order;i++ ){
objBlockCode.blocks[i].completed = false	
objBlockCode.blocks[i].looped = 0
}
objBlockCode.order = creator.order
}else{

cond = false	
}
}

else if creator.condition == 10{
if objBlockCode.milk != objBlockCode.milkmax{
cond = true
for (var i = creator.order+1; i < order;i++ ){
objBlockCode.blocks[i].completed = false	
objBlockCode.blocks[i].looped = 0
}
objBlockCode.order = creator.order
}else{

cond = false	
}
}

else if creator.condition == 11{
if objBlockCode.vegetables != objBlockCode.vegetablesmax{
cond = true
for (var i = creator.order+1; i < order;i++ ){
objBlockCode.blocks[i].completed = false	
objBlockCode.blocks[i].looped = 0
}
objBlockCode.order = creator.order
}else{

cond = false	
}
}

else if creator.condition == 12{
if objBlockCode.snacks != objBlockCode.snacksmax{
cond = true
for (var i = creator.order+1; i < order;i++ ){
objBlockCode.blocks[i].completed = false	
objBlockCode.blocks[i].looped = 0
}
objBlockCode.order = creator.order
}else{

cond = false	
}
}


}
}else{

}
}
}


if creator != noone{
if !instance_exists(creator){
instance_destroy()	
}else{
if mouse_over(){
creator.out = true	
}else{
creator.out = false	
}
}
}

if !drag{
	if order >= 0{

		objBlockCode.blocks[order] = id

		array_set(objBlockCode.blocks,order,id)

	}
}else{
	
	if order > array_length(objBlockCode.blocks)-1{
		array_push(objBlockCode.blocks,noone)	
	}
}