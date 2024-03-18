extends KinematicBody2D

# Define movement speed
var speed = 200

func _physics_process(delta):
	# Define movement vector
	var movement = Vector2()

	# Detect input and set movement vector accordingly
	if Input.is_action_pressed("move_right"):
		movement.x += 1
	if Input.is_action_pressed("move_left"):
		movement.x -= 1
	if Input.is_action_pressed("move_down"):
		movement.y += 1
	if Input.is_action_pressed("move_up"):
		movement.y -= 1

	# Normalize diagonal movement to prevent moving faster
	# when moving diagonally
	movement = movement.normalized()

	# Move the player
	move_and_slide(movement * speed)
