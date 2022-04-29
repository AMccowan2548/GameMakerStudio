// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function StatePlayerWalking()
{
	//what does the state do
	CheckCollisionsX();
	CheckCollisionsY();
	
	//animation or the state
	
	//conition for leaving the state
	if (place_meeting(x, y + 1, oWall) and (jump))
	{
		state = states.jumping
	}
	if (place_meeting(x, y + 1, oBox) and (jump))
	{
		state = states.jumping
	}
	
	if (place_meeting(x, y + 1, oSpikes) and (jump))
	{
		state = states.jumping
	}
{
	//sprite_index = RocketShoes;
	//image_speed = 1;
	//yVector	= jumpforce;
}
	if (xDirection = 0)
	{
		state = states.idle;
	}
}