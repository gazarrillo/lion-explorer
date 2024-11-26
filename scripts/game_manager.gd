extends Node

var current_state

@onready var word_game: Node = %"Word Game"
@onready var game_grid: Node2D = %"Game Grid"
@onready var player: CharacterBody2D = %Player

var score = 0
var player_position: Vector2 = Vector2()
var landmarks_visited = []

func add_score():
	score += 1
	print(score)

func explore():
	get_tree().change_scene_to_file("res://Scenes/game.tscn")
	print("Ready to explore the game grid.")
	print(score)

func start_word_game(landmark_name):
	if landmark_name not in landmarks_visited:
		landmarks_visited.append(landmark_name)
		print(landmarks_visited)
		get_tree().change_scene_to_file("res://Scenes/word_game.tscn")
		print("Word game started.")
	else:
		print("Landmark Visited!")	
