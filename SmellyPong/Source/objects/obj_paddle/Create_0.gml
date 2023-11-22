// We're going to lazily grab our starting poisiton for an easy reset.
starty = y;

// Speeeeeeeeeeeeed! SPEEEEEEEEEEEEEEEEEEED!!!
move_speed = 0;
max_speed = 5;

// The bot paddle will share an object with the player's paddle.
// We'll set the bot boolean as true in the room editor. Click the object (the one on the right)
// in the room editor and you'll see "Edit Creation Code" on the left in the inspector panel.
bot = false;
bot_target = starty;