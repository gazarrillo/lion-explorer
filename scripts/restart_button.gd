extends Button

func _on_pressed() -> void:
	GameManager.restart_game()
	get_tree().change_scene_to_file("res://Scenes/main_menu.tscn")
