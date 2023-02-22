extends Node


func _physics_process(delta):
	if Input.is_key_pressed(KEY_W):
		print("w pressed")
