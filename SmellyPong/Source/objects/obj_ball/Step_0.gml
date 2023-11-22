// If the ball hits the top or bottom we need to bounce!
if ((bbox_bottom > room_height) || (bbox_top < 0))
{
	ver_speed = -ver_speed;
	ver_speed = clamp(ver_speed * 1.1, -10, 10);
	
	audio_play_sound(choose(snd_fart, snd_fart_the_second, snd_fart_fartly_the_third), 1, false);
}

// Set the position with our speed variables
x += hor_speed;
y += ver_speed;

// Check for scoring
if (x < 0)
{
	// The bot scored!
	// Increase their score and then destroy the ball
	obj_controller.bot_score++;
	audio_play_sound(snd_clap, 1, false);
	
	// Just in case there's more than one currently spawned ball.
	with(obj_ball)
		instance_destroy();
}
else if (x > room_width)
{
	// The player scored, weow!
	// Increase their score and so on
	obj_controller.user_score++;
	audio_play_sound(snd_clap, 1, false);
	
	// Just in case there's more than one currently spawned ball.
	with(obj_ball)
		instance_destroy();
}