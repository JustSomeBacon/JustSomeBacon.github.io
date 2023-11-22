// Don't let the player move if the game hasn't started yet.
// This is where you could use a global variable as well.
if (!obj_controller.game_active)
	return;

// Don't control the bot's paddle, silly
if (!bot)
{
	// Let's move the player paddle...
	// up! 
	if (keyboard_check(ord("W"))||keyboard_check(vk_up))
		move_speed = -max_speed;
	// And down!
	else if (keyboard_check(ord("S"))||keyboard_check(vk_down))
		move_speed = max_speed;
	else
		move_speed = 0;
}
else
{
	// Dumb AI
	if (instance_exists(obj_ball))
		bot_target = (instance_nearest(x, y, obj_ball).y) - (sprite_height / 2);	
	
	if (bot_target > y)
		move_speed = max_speed;
	else if (bot_target < y)
		move_speed = -max_speed;		
}

y = clamp(y + move_speed, 0, room_height - sprite_height);