/// @description Insert description here
// You can write your code in this editor
if place_meeting(x,y,objPlayer){
	if room = Room1Tutorial1{
		SlideTransition(TRANS_MODE.GOTO,Room1Tutorial2)	
	}else if room = Room1Tutorial2{
		SlideTransition(TRANS_MODE.GOTO,Room1)	
	}
}