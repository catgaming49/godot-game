extends Sprite2D

var player_weapon_count = 0

func _process(_delta):
	if Input.is_action_pressed("one"):
		player_weapon_count = 1
		change_sprite()
		pass

func change_sprite():
	if player_weapon_count == 1:
		$Sprite2D.texture = load("res://player with gun.png")
		player_weapon_count = 0

