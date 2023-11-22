// Check for game start / restart
if (!game_active)
{
	if (keyboard_check_pressed(vk_anykey))
	{
		// Reset
		user_score = 0;
		bot_score = 0;
		
		// Change the game state.
		game_active = true;	
		
		// Delay the ball spawn by just a little.
		alarm[0] = 10;
	}
}

// Check for game end
if ((user_score >= score_to_win) || (bot_score >= score_to_win))
{
	// Glorious win sound! :^)
	if (game_active)
	{
		audio_play_sound(snd_clap, 1, false);
		audio_play_sound(snd_fart_but_more, 1, false);
	}
	
	// Someone won, time to move to the post game state
	game_active = false;	
	
	// Hide the paddles
	obj_paddle.visible = false;
}