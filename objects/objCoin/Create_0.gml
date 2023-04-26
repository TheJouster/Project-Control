/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
randomize()
x = irandom_range(24,room_width-24)
y = irandom_range(24,room_height-24)
for(i = 0; i < room_width;i+=12){
for(j = 0; j < room_height;j+=12){
if point_distance(x,y,i,j) < 8{
x = i	
y = j	
}
}
}	


