extends Node2D

var weapon_cooldown = 1

@export var Bullet : PackedScene

func shoot():
	print("Shooting and tootin now")
	var b = Bullet.instantiate()
	add_child(b)
	b.rotation = get_node("CharacterBody2D/Marker2D").rotation
	b.position = $CharacterBody2D.position
	print($CharacterBody2D.transform)
	#var velocity = Vector2(1, 0).rotated(get_node("CharacterBody2D/Marker2D").rotation)
	b.visible = true

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("use_weapon"):
		shoot()
		
