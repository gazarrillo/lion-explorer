extends Node2D

var game_state_manager

func _ready():
	# Get a reference to the GameStateManager node
	game_state_manager = get_parent().get_node("GameStateManager") # Update the path if necessary
	print("Ready to explore landmarks.")

	# Confirm GameStateManager is found
	if game_state_manager:
		print("GameStateManager successfully found.")
	else:
		print("GameStateManager not found. Check your scene structure.")

func visit_landmark(landmark_name):
	print("Visiting landmark: ", landmark_name)
	if game_state_manager:
		game_state_manager.set_state(game_state_manager.GameState.WORD_GAME)
	else:
		print("GameStateManager is not set. Cannot change game state.")
