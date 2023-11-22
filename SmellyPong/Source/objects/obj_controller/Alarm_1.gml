// Leave if the game isn't active.
if (!game_active)
	return;

// Spawn another ball for chaos!!!
instance_create_depth((room_width / 2) - sprite_width, (room_height / 2) - sprite_height, 0, obj_ball);

// ANOTHER!!!!
alarm[1] = 20 * 60;