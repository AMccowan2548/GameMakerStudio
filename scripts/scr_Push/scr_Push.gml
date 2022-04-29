// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

/*function scr_Push()
{
	xSpeed = 0;

	if (place_meeting(x+xSpeed, y, oBox))
	{
		 instance_place(x+xSpeed, y, oBox)
	}
	 with (oBox)
	{
		scr_collision()
	}

if (oBox + xSpeed/2)
{
	 xSpeed /= 2;
}
}