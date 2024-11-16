extends Node

enum GameState { IDLE, ACTIVE, READY_TO_EXPLORE, WORD_GAME, ON_HOLD, GAME_COMPLETED }

var current_state = GameState.IDLE

func _ready():
	set_state(GameState.IDLE)

func set_state(new_state):
	current_state = new_state
	match current_state:
		GameState.IDLE:
			print("Game is idle. Waiting for player to start.")
		GameState.ACTIVE:
			print("Game is active!")
			transition_to_ready_to_explore()
		GameState.READY_TO_EXPLORE:
			print("Ready to explore the game grid.")
		GameState.WORD_GAME:
			print("Word game started.")
			start_word_game()
		GameState.ON_HOLD:
			print("Game is paused.")
		GameState.GAME_COMPLETED:
			print("Game completed! Showing final score.")

func transition_to_ready_to_explore():
	set_state(GameState.READY_TO_EXPLORE)

func start_word_game():
	# Logic for word game transition
	set_state(GameState.WORD_GAME)

func pause_game():
	set_state(GameState.ON_HOLD)

func resume_game():
	set_state(GameState.ACTIVE)

func complete_game():
	set_state(GameState.GAME_COMPLETED)
