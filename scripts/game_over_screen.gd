extends Control

@onready var score: Label = $Score

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	score.text = "Score: "+ str(GameManager.score)
