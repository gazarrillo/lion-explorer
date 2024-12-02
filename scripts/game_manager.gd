extends Node

var current_state

var player_position: Vector2 = Vector2()
var landmarks_visited: Array = []
var score: int = 0
var first_time = true

func explore():
	if len(landmarks_visited) == 7:
			get_tree().change_scene_to_file("res://Scenes/game_over_screen.tscn")
	else:
		get_tree().change_scene_to_file("res://Scenes/game.tscn")
		print('Score: ',score)
		print("Ready to explore the game grid.")

func start_word_game(landmark_name):
	if landmark_name not in landmarks_visited:
		landmarks_visited.append(landmark_name)
		print('Landmarks Visited: ', landmarks_visited)
		get_tree().change_scene_to_file("res://Scenes/word_game.tscn")
		print("Word game started.")
	else:
		print("Landmark Visited!")
		
func restart_game():
	score = 0
	landmarks_visited = []
	player_position = Vector2(0,0)
	first_time = false
