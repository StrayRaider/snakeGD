extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

func _ready():
	pass

func _input(event):
	if event is InputEventKey:
		if event.get_scancode() == KEY_W:
			print("w ya basıldı")
		else:
			print("w harici bisi oldu")
	print(event)
