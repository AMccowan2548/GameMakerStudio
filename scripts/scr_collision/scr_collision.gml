// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_collision()

//xSpeed = argument0;

{
	//(place_meeting(x +xVector, y, oWall))
	if(!place_empty(x +xVector, y))
	{
			//check one pixel to the left or right of us until we collide with the oWall
			// ! means "not"
			while(place_empty(x +xVector, y))
				{
				//only move one pixel at a time until you hit a wall
				x = x + xDirection;
				}
				xVector = 0;
	}
		//otherwise move normal
	x = x + xVector;
	
	yVector = yVector + grv;
	if (!place_empty(x, y + yVector))
	{
			//check one pixel to the up or own of us until we collide with the oWall
			//"sign" is going to return the positive or negative fo a value (-1, +1)
			//sigh(yvector) if yVector is positive it will return a positive 1, if yVector is negative, it will return a -1
			while(place_empty(x, y + sign(yVector)))
			{
				//only move one pixel at a time until you hit a wall
				y = y + sign(yVector);
			}
			yVector = 0;
	}
		//otherwise move normal
	y = y + yVector;
}
