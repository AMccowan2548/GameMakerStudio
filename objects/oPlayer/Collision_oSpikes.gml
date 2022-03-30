/// @description Insert description here

//Spikes Collision
if (y <= other.y - other.sprite_height*0.1)
	{
		PlayerHurt()
	}

if (PlayerHurt())
	{
		oPlayer.hp -= 1;
	}

