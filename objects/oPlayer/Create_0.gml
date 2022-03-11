///@description Creating Variables
//code that runs when player is created
canJump = true;
//How many pixels per frame we want the player to move
xSpeed =4;

//what direction player is facing (where 1 = right, left = 0, -1 = left, 0 = front/not moving)
xDirection = 0;

//how fast and that directionthe player is moving
yVector = 0;

//gravity levels
grv = 0.4;

jumpforce = -15;

//Boolean for invincibility
isInvincible = false;

//health points
hp = 4;

//level timer
levelTimer = 60;

//invinsibility timer
invTimer = 2;

omniDirection = 0;
Dashing = false;
DashTimer = 0.3;

mouseX = mouse_x;
mouseY = mouse_y;
hookActive = false;

enterShip = false;
enteredShip = false;


haveHook = false;

enum states 
{
	walking,
	jumping,
	idle 
}

state = states.idle;

state_array[states.walking] = StatePlayerWalking;
state_array[states.jumping] = StatePlayerJumping;
state_array[states.idle] = StatePlayerIdle;

sprite_array[states.walking] = sPlayerWalking;
sprite_array[states.jumping] = sPlayerJumping;
sprite_array[states.idle] = sPlayerIdle;


