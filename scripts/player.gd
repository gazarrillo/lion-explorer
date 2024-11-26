extends CharacterBody2D

const SPEED = 150.0

func _ready():
	position = GameManager.player_position

func _physics_process(_delta: float) -> void:
	# Initialize movement vector
	var movement_vector = Vector2.ZERO

	# Get input from arrow keys or WASD for movement
	if Input.is_action_pressed("ui_right"):
		movement_vector.x += 1
	if Input.is_action_pressed("ui_left"):
		movement_vector.x -= 1
	if Input.is_action_pressed("ui_down"):
		movement_vector.y += 1
	if Input.is_action_pressed("ui_up"):
		movement_vector.y -= 1

	# Normalize the movement vector to prevent faster diagonal movement
	if movement_vector != Vector2.ZERO:
		movement_vector = movement_vector.normalized() * SPEED

	# Set velocity
	velocity = movement_vector

	# Move the character using move_and_slide (uses the velocity property)
	move_and_slide()
