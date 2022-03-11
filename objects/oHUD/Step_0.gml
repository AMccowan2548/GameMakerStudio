/// @description Level Timer
// You can write your code in this editor

levelTimer -= 1/room_speed
if (levelTimer < 0) 
{
	PlayerDeath();
}