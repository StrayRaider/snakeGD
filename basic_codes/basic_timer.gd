extends Node

var time = 0


func _ready():
	pass # Replace with function body.
	
func _process(delta):
	time += delta
	print(time)
