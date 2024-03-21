extends Area2D

# Called when the node enters the scene tree for the first time.

var timer = Timer.new()

func _ready():
	self.add_child(timer)
	show()
	timer.connect("timeout", queue_free)
	timer.set_wait_time(2)
	timer.start()




# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#position = Vector2(position.x+0.1, position.y+0.1) * delta
