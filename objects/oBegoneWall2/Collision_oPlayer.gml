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
	
	/*Horizontal collision to avoid getting stuck in wall (oBox)
if (place_meeting(x + global.playerspeed, y, obj_player_parent))
{
while (!place_meeting(x+sign(global.playerspeed),y,obj_player_parent))
{
x += sign (global.playerspeed) ;
}
global.playerspeed = 0;
}