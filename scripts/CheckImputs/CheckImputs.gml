// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CheckImputs()
{
		//keyboard check and inputs
	right = keyboard_check(vk_right);
	left = keyboard_check(vk_left);
	jump = keyboard_check_pressed(vk_space);                   
	Dash = keyboard_check_pressed(vk_control);
	xDirection = right - left;

	invTimer = 2;

	if left
	{
		omniDirection = -1;
	}

	if right
	{
		omniDirection = 1;
	}
}