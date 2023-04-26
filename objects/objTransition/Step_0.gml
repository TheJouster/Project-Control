

/// @description Insert description here
// You can write your code in this editor
if (mode != TRANS_MODE.OFF){
if (mode == TRANS_MODE.INTRO)	{
if alpha > 0{
alpha-=0.05	
}
}else{
if alpha < 1{
alpha+=0.05	
}
}

if (alpha == 0) or (alpha == 1){
	switch(mode)
	{
		case TRANS_MODE.INTRO:
		{
			
			
			mode = TRANS_MODE.OFF
			break;
		}
		case TRANS_MODE.NEXT:
		{
		
			mode = TRANS_MODE.INTRO


					room_goto_next()

		
			break;
		}
		case TRANS_MODE.GOTO:
		{
			
			mode = TRANS_MODE.INTRO
			room_goto(target);
			break;
		}
		case TRANS_MODE.RESTART:
		{
		mode = TRANS_MODE.INTRO
			room_restart()
			break;
		}
		case TRANS_MODE.DEATH:
		{
game_end()
			break;
		}
		case TRANS_MODE.DIE:
		{
			
			mode = TRANS_MODE.INTRO
			

			break;
		}
	}
}
}
 