// Leave if the game isn't active.
if (!game_active)
	return;

// Spawn the ball here, yo.
instance_create_depth((room_width / 2) - sprite_width, (room_height / 2) - sprite_height, 0, obj_ball);
// And reset the paddles!
reset_paddles();

// Set an additional ball spawn for if the volley goes on too long.
alarm[1] = 20 * 60; // 20 seconds?