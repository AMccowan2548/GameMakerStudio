///@description Movement
//code that runs every frame

script_execute(state_array[state]);
sprite_index = sprite_array[state];

if (isInvincible)
{
	invTimer -= 1/room_speed;
	if (invTimer <=0)
	{
		invTimer = 2;
		isInvincible = false;
		
	}
}

if haveHook 
{

	if (mouse_check_button_pressed(mb_left))
	{
		mouseX = mouse_x;
	    mouseY = mouse_y;
		if (place_meeting(mouseX, mouseY, oWall))
		or (place_meeting(mouseX, mouseY, oTurret))
		or (place_meeting(mouseX, mouseY, oCoin))
		{
			hookActive = true;
		}
	}

	if hookActive
	{
		grv = 0.1
		x += (mouseX - x) * 0.1;
		y += (mouseY - y) * 0.1;
	}

	if (mouse_check_button_released(mb_left))
	{
		hookActive = false;
		//haveHook = false;
		grv= .3;
	}
}




if Dash
{
	Dashing = true;
}



//Die in a pit and restart level
if (y >= room_height)

{
			PlayerDeath();
}


/*
if (place_meeting(x, y + 1, oWall))
{
	sprite_index = sPlayer;
	image_speed = 1;
}

if (place_meeting(x, y + 1, oWall) and (jump))
{
	sprite_index = RocketShoes;
	image_speed = 1;
	yVector	= jumpforce;
}

