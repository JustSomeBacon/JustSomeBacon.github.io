// Set font stuff
draw_set_font(fnt_main);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white);

// Check the game state.
if (game_active)
{
	// Draw the scores
	draw_text(300, 50, user_score);
	draw_text(room_width - 300, 50, bot_score);
}
else
{
	var _big_text, _small_text;
	
	// Now that's see if it's pre or post game.
	if ((user_score + bot_score) == 0)
	{
		// Pre game
		_big_text = "Press the any key to start!";
		_small_text = "Don't ask which key is the fuckin' any key, just press one.";
	}
	else
	{
		// User won
		if (user_score > bot_score)
		{
			_big_text = "Wow, look at you. You won. Impressive.";
			_small_text = "Press any key to start again or whatever, you champ.";
		}
		else
		{
			_big_text = "Damn. You suck. Not surprised, though.";
			_small_text = "Press any key to lose again if you'd like. Chump.";			
		}
	}
	
	draw_text(room_width / 2, room_height / 2, _big_text); 
	draw_set_font(fnt_main_but_small);
	draw_text(room_width / 2, (room_height / 2) + 50, _small_text); 
}