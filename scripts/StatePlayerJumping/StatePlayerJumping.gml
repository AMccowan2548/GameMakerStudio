// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function StatePlayerJumping()
{
	  //what does the state do
	CheckCollisionsX()
	
	if (canJump)
	{
		yVector = jumpforce;
		canJump = false;
	}

	//if we are touching oWall and we press jump key
if (place_meeting(x, y + 1, oWall) and (jump))
{
	sprite_index = RocketShoes;
	image_speed = 1;
	yVector	= jumpforce;
}
	
	if (place_meeting(x, y + 1, oBox) and (jump))
{
	//sprite_index = RocketShoes;
	image_speed = 1;
	yVector	= jumpforce;
}

	CheckCollisionsY();
	
	//condition for leaving the state
	if (place_meeting(x, y+ 1, oWall))
	{
			state = states.walking
			canJump = true;
	}
	
}