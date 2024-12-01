extends Button

@onready var main_menu: Control = $".."

func _on_pressed() -> void:
	main_menu.visible = false
	get_tree().change_scene_to_file("res://Scenes/game.tscn")
