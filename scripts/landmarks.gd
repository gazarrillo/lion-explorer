extends Area2D

@onready var player: CharacterBody2D = %Player

# Export a variable to identify the landmark
@export var landmark_name: String

func _on_body_entered(body: Node2D) -> void:
	print("Player detected at landmark:", landmark_name)
	GameManager.player_position = player.position
	GameManager.start_word_game(landmark_name)
	
