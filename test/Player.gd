extends Node2D

var weapon_cooldown = 1

@export var Bullet : PackedScene

func shoot():
	var b = Bullet.instantiate()
	add_child(b)
	b.transform = transform

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("use_weapon"):
		print("cotton eye joe")
		shoot()
		
