// Anti stuck hack
if (is_spooky_ghost)
	return;
else
{
	is_spooky_ghost = true;
	alarm[0] = 10;
}

// Bounce!
hor_speed = -hor_speed;

audio_play_sound(choose(snd_fart, snd_fart_the_second, snd_fart_fartly_the_third), 1, false);