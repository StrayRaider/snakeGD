extends Node

func _ready():
	pass # Replace with function body.

func _exit_tree():
	self.queue_free()
