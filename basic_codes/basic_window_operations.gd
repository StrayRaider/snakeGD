extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	print("here : " , OS.is_window_resizable())
	#gets max size
	var max_size = OS.get_screen_size()
	#set pos 0,0 windowed fullscreen game mode
	var window_pos = Vector2(0,0)
	OS.set_window_size(max_size)
	OS.set_window_position(window_pos)
	
	
	OS.set_window_resizable(false)
	#set borderless
	OS.set_borderless_window(true)
	#fullscreen mode
	OS.set_window_fullscreen(true)
	
	print("here : " , OS.is_window_resizable())


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
