extends Node2D

var weapon_cooldown_max = 1
var weapon_cooldown = 0

@export var Bullet:PackedScene

func shoot():
	var b = Bullet.instantiate()
	add_child(b)
	#b.rotation = get_node("CharacterBody2D/Marker2D").rotation + 45
	b.rotate(get_angle_to(get_global_mouse_position()))	
	#b.rotation
	b.position = $CharacterBody2D.position
	b.visible = true

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("use_weapon") and weapon_cooldown <= 0:
		weapon_cooldown = 1
		shoot()
	if weapon_cooldown > 0:
		weapon_cooldown -= delta
		#print(weapon_cooldown)
		
