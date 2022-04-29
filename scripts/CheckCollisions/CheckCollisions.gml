// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CheckCollisionsX()
{
	CheckImputs();
	//Horizontal Movement
	xDirection = right - left;
	xVector = xDirection* xSpeed;
	if (xDirection != 0)
	{
		image_xscale = xDirection;
	}
	

	if Dashing
{
	
	DashTimer -= 1/room_speed;
	if DashTimer <= 0
	{
		Dashing = false;
		DashTimer = 0.3;
	}

	if (!place_empty(x + xVector , y ))
	{
		xVector = 0;
	}

	//otherwise move fast
	if omniDirection = -1
	{	
		x = x - 10;
	}

	if omniDirection = 1
	{	
		x = x + 10;
	}


}

else
{
//(place_meeting(x +xVector, y, oWall))
	if(place_meeting(x +xVector, y, oWall))
	{
			//check one pixel to the left or right of us until we collide with the oWall
			// ! means "not"
			while(!place_meeting(x +xVector, y, oWall))
				{
				//only move one pixel at a time until you hit a wall
				x = x + xDirection;
				}
				xVector = 0;
	}
	if(place_meeting(x +xVector, y,oBox))
	{
			//check one pixel to the left or right of us until we collide with the oWall
			// ! means "not"
			while(!place_meeting(x +xVector, y, oBox))
				{
				//only move one pixel at a time until you hit a wall
				x = x + xDirection;
				}
				xVector = 0;
	}
		//otherwise move normal
	x = x + xVector;
}
}



function CheckCollisionsY()
{
	CheckImputs();
	//Vertical Movement
	yVector = yVector + grv;
	if Dashing
{
	
	DashTimer -= 1/room_speed;
	if DashTimer <= 0
	{
		Dashing = false;
		DashTimer = 0.3;
	}


	if (!place_empty(x, y + yVector))
	{
				//check one pixel to the up or own of us until we collide with the oWall
				//! means "not"
				while(place_empty(x, y + sign(yVector)))
				{
					//only move one pixel at a time until you hit a wall
					y = y + sign(yVector);
				}
					yVector = 0;
	}
}

else
{
//(place_meeting(x +xVector, y, oWall))

	if (place_meeting(x, y + yVector, oWall))
	{
			//check one pixel to the up or own of us until we collide with the oWall
			//"sign" is going to return the positive or negative fo a value (-1, +1)
			//sigh(yvector) if yVector is positive it will return a positive 1, if yVector is negative, it will return a -1
			while(!place_meeting(x, y + sign(yVector), oWall))
			{
				//only move one pixel at a time until you hit a wall
				y = y + sign(yVector);
			}
			yVector = 0;
	}
	if (place_meeting(x, y + yVector, oBox))
	{
			//check one pixel to the up or own of us until we collide with the oWall
			//"sign" is going to return the positive or negative fo a value (-1, +1)
			//sigh(yvector) if yVector is positive it will return a positive 1, if yVector is negative, it will return a -1
			while(!place_meeting(x, y + sign(yVector), oBox))
			{
				//only move one pixel at a time until you hit a wall
				y = y + sign(yVector);
			}
			yVector = 0;
	}
		//otherwise move normal
	y = y + yVector;
}
}
