/// @description Insert description here
// You can write your code in this editor
//Display current coin count and points
draw_text(32,  32 , "Coins: " + string(global.coins));
draw_text(32,64, "Points: " + string(global.points));
draw_text(32,96, "HP: " + string(oPlayer.hp));

draw_text(32,128, "Level Time Remaining: " + string(floor(levelTimer)));

draw_text(32,160, "isInvincible: " + string(oPlayer.isInvincible));

draw_text(32,192, "invTimer: " + string(oPlayer.invTimer));
