extends Sprite

var width = OS.get_window_size().x
var height = OS.get_window_size().y
var velocity = 100
var velo_treshold = 100
var accelartion = 9.81*5

func _enter_tree():
	print("I entered")
	#center yourself 
	#set_it_centered()
	set_it_bootom_centered()
	#set_it_top_centered()
	#set_it_left_centered()
	#set_it_right_centered()

func _physics_process(delta):
	#set_it_centered()
	#set_it_bootom_centered()
	#set_it_top_centered()
	#set_it_left_centered()
	#set_it_right_centered()
	#accelartion_down(delta)
	if()
	move_left(delta)
	move_right(delta)


func move_right(delta) -> void:
	self.position.x += velocity*delta

func move_left(delta) -> void:
	self.position.x -= velocity*delta

func move_up(delta) -> void:
	self.position.y -= velocity*delta

func move_down(delta) -> void:
	self.position.y += velocity*delta


func accelartion_down(delta):
	if velocity > -velo_treshold:
		velocity -= delta*accelartion

func _ready():
	pass # Replace with function body.

func set_it_centered() -> void:
	self.position.x = width/2
	self.position.y = height/2

func set_it_bootom_centered() -> void:
	self.position.x = width/2
	self.position.y = height - texture.get_height()/2

func set_it_top_centered() -> void:
	self.position.x = width/2
	self.position.y = texture.get_height()/2


func set_it_left_centered() -> void:
	self.position.x = texture.get_width()/2
	self.position.y = height/2

func set_it_right_centered() -> void:
	self.position.x = width - texture.get_width()/2
	self.position.y = height/2
