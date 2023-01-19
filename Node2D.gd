extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var time = 0


# Called when the node enters the scene tree for the first time.
func _ready():
	print("hello")
	print("here : " , OS.is_window_resizable())
	var max_size = OS.get_screen_size()
	var window_pos = Vector2(0,0)
	#OS.set_window_size(max_size)
	#OS.set_window_position(window_pos)
	#OS.set_window_resizable(false)
	#OS.set_borderless_window(true)
	#OS.set_window_fullscreen(true)
	print("here : " , OS.is_window_resizable())
	pass # Replace with function body.
	
func _input(event):
	if event is InputEventKey:
		if event.get_scancode() == KEY_W:
			print("w ya basıldı")
		else:
			print("w harici bisi oldu")
	print(event)

func _process(delta):
	time += delta
	#print(time)

func _exit_tree():
	self.queue_free()
