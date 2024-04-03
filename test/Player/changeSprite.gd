extends Sprite2D
var player_weapon_count = 0
@export var pistol_equipped:bool = false
@onready var player_sprite:Texture2D = preload("res://Player/player sprite.png")
@onready var player_with_pistol_sprite:Texture2D = preload("res://Player/player with gun.png")
signal get_equipped

func _process(_delta):
	if Input.is_action_pressed("one"):
		player_weapon_count = 1
		change_sprite()

func change_sprite():
	if player_weapon_count == 1:
		texture = load("res://Player/player with gun.png")
		get_equipped.emit(true)
		player_weapon_count = 0


