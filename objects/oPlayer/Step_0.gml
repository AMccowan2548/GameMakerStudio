///@description Movement
//code that runs every frame


//keyboard check and inputs
right = keyboard_check(vk_right);
left = keyboard_check(vk_left);
jump = keyboard_check_pressed(vk_space);                   
Dash = keyboard_check_pressed(vk_control)

if left
{
		omniDirection = -1;
}
if left
{
		omniDirection = 1;
}

//Horizontal Movement
xDirection = right - left;
if (xDirection != 0)
xVector = xDirection* xSpeed;
{
	image_xscale = xDirection;
}

levelTimer -= 1/room_speed
 if (levelTimer < 0) 
 {
	PlayerDeath();
 }

if Dash
{
	Dashing = true;
}

if Dashing
{
	DashTimer = 1/room_speed;
	if DashTimer <= 0
{
	Dashing = false;
	DashTimer = 0.3;
}
	if (!place_empty(x + xVector, y))
	{
		xVector = 0;
	}
	//otherwise move fast
	if omniDirection = -1
	{	
		x = x - 10;
	}


else
	{
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

	if (place_meeting(x, y + 1, oWall))
	{
		sprite_index = sPlayer;
		image_speed = 1;
}

//if we are touching touching oWall and we press jump key
if (place_meeting(x, y + 1, oWall) and (jump))
{
	sprite_index = RocketShoes;
	image_speed = 1;
	yVector	= jumpforce;
}



//Die in a pit and restart level
if (y >= room_height)

{
		 PlayerDeath();
}