/// @description Insert description here
// You can write your code in this editor

if(distance_to_object(oPlayer)) < (distance_to_object(oBegoneWall))
	{
		image_alpha = 0;
	}
else if (distance_to_object(oPlayer)) > (distance_to_object(oBegoneWall))
	{
		image_alpha = 1;
	}
else
	{
		image_alpha = distance_to_object(oPlayer) / transparency_variable;
	}