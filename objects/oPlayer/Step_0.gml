///@description Movement
//code that runs every frame

//keyboard check and inputs
right = keyboard_check(vk_right);
left = keyboard_check(vk_left);
jump = keyboard_check_pressed(vk_space);                   

//Horizontal Movement
xDirection = right - left;
xVector = xDirection* xSpeed;

//check to seee if there is a wall, and if there is, stop movement if there isn't continue movement
if (place_meeting(x +xVector, y, oWall))
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
	//otherwise move normal
x = x + xVector;

//Vertical Movement
yVector = yVector + grv;

if (place_meeting(x, y + yVector, oWall))
	{
		//check one pixel to the up or own of us until we collide with the oWall
		// ! means "not"
		//"sign" is goingto return the positive or negative fo a value (-1, +1)
		//sigh(yvector) if yVector is positive it will return a positive 1, if yVector is negative, it will return a -1
		while(!place_meeting(x, y + sign(yVector), oWall))
			{
			//only move one pixel at a time until you hit a wall
			y = y + sign(yVector);
			}
			yVector = 0;
	}
	//otherwise move normal
y = y + yVector;

//if we are touching touching oWall and we press jump key
if (place_meeting(x, y + 1, oWall) and (jump))
{
	yVector	= jumpforce;
}

//Die in a pit and restart level
if (y >= room_height)

{
		 PlayerDeath();
}