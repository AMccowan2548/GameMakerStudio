/// @description Insert description here
// You can write your code in this editor

//keyboard check and inputs
right = keyboard_check(vk_right);
left = keyboard_check(vk_left);
up = keyboard_check(vk_up);
down = keyboard_check(vk_down);


yDirection = down - up;
yVector = 4* yDirection;

xDirection = right - left;
xVector = xDirection* xSpeed;


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

x = x + xVector;
			
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

y = y + yVector + grv

if isInvincible
{
	invTimer -= 1/room_speed;
	if invTimer <=0
	{
		isInvincible = false;
		invTimer = 2;
	}
}