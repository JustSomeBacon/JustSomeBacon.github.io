// This is my controller object. This will handle the game state and score.

// Player's score
user_score = 0;
// Bot's score
bot_score = 0;
// How many until someone wins
score_to_win = 3;

// We'll use a single variable for game state checking.
// We can freeze the player's movement while this is false.
// Paired with scores we can differ between pre-match and post-match.
game_active = false;