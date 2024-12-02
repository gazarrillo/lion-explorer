extends Button

@onready var main_menu: Control = $".."

func _on_pressed() -> void:
	main_menu.visible = false
	GameManager.explore()
