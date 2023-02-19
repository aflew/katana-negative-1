/// @description progress transition

if mode != TRANS_MODE.OFF
{
	if mode == TRANS_MODE.INTRO
	{
		percent = max(0,percent - max(percent/12,0.015));
	}
	else 
	{
		percent = min(1,percent + max((1-percent)/12,0.015))
	}
	if percent == 1 || percent == 0 // once the black bars have finished, change modes
	{
		switch(mode)
		{
			
			case TRANS_MODE.INTRO:
			{
				mode = TRANS_MODE.OFF;
				break;
			}
			case TRANS_MODE.NEXT:
			{
				mode = TRANS_MODE.INTRO;
				room_goto_next();
				break;
			}
			case TRANS_MODE.GOTO:
			{
				mode = TRANS_MODE.INTRO;
				room_goto(target);
				break;
			}
			case TRANS_MODE.RESTART:
			{
				game_restart();
				break;
			}
		}
	}
}
