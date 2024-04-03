extends Area2D

var timer = Timer.new()
var speed = 1000
var fired = false
var direction = Vector2.ZERO

func _ready():
	self.add_child(timer)
	show()
	timer.connect("timeout", queue_free)
	timer.set_wait_time(2)
	timer.start()

func _process(delta):
	pass

func _physics_process(delta):
	if not fired:
		var mouse_position = get_global_mouse_position()
		direction = (mouse_position - position).normalized()
		var initial_rotation = direction.angle()
		rotation = initial_rotation # Set initial rotation
		fired = true
	
	position += direction * speed * delta
