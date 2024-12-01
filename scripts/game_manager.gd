extends Node

var current_state

@onready var word_game: Node = %"Word Game"
@onready var game_grid: Node2D = %"Game Grid"
@onready var player: CharacterBody2D = %Player

var player_position: Vector2 = Vector2()
var landmarks_visited = []
var score = 0

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
