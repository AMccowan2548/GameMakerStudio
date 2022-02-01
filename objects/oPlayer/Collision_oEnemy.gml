/// @description Basic Enemy Collision

//check to see if there is a collision between oPlayer and the head  or the top of oEnemy
if (y <= other.y - other.sprite_height*0.9)

	{
		//bounce in the air
		yVector = jumpforce 
		EnemyHurt();

	}
//otherwise restart level
else 
	{
	  x = x - xVector*30;
	  PlayerHurt();
	}