/// @description Insert description here
// You can write your code in this editor
if (state == "idle"){sprite_index = sp_player_idle}

if (state == "walk"){sprite_index = sp_player_walk}

if (keyboard_check(vk_right)){
	x+=4;
	state = "walk";
	image_xscale = 1;
}

if (keyboard_check(vk_left)){
	x-=4;
	state = "walk";
	image_xscale = -1;
}

if (keyboard_check(vk_up)){
	y-=4;
	state = "walk";
}

if (keyboard_check(vk_down)){
	y+=4;
	state = "walk";
}

if (keyboard_check(vk_nokey)){
	state = "idle";
}