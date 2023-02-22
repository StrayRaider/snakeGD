extends Sprite

var screen_width = OS.get_window_size().x
var screen_height = OS.get_window_size().y
var velocity = 100
var velo_treshold = 100
var accelartion = 9.81*5
var movement_vector = Vector2(0,0)
var active_direction = "up"

func _enter_tree():
	print("I entered")
	#center yourself 
	set_it_centered()
	#set_it_bootom_centered()
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
	#move_left(delta)
	#move_right(delta)
	update_direction()
	set_direction(delta)
	bound_effect()

func update_direction():
	if Input.is_key_pressed(KEY_W):
		active_direction = "up"
	elif Input.is_key_pressed(KEY_S):
		active_direction = "down"
	elif Input.is_key_pressed(KEY_A):
		active_direction = "left"
	elif Input.is_key_pressed(KEY_D):
		active_direction = "right"

func bound_effect():
	if self.position.x + texture.get_width() /2 > screen_width:
		self.position.x = texture.get_width() /2
	elif self.position.x + texture.get_width() /2 < texture.get_width():
		self.position.x = screen_width - texture.get_width() /2
	elif self.position.y + texture.get_height() /2 > screen_height:
		self.position.y = texture.get_height() /2
	elif self.position.y + texture.get_height() /2 < texture.get_height():
		self.position.y = screen_height - texture.get_height() /2

func set_direction(delta):
	if active_direction == "up":
		move_up(delta)
	elif active_direction == "down":
		move_down(delta)
	elif active_direction == "left":
		move_left(delta)
	elif active_direction == "right":
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
	self.position.x = screen_width/2
	self.position.y = screen_height/2

func set_it_bootom_centered() -> void:
	self.position.x = screen_width/2
	self.position.y = screen_height - texture.get_height()/2

func set_it_top_centered() -> void:
	self.position.x = screen_width/2
	self.position.y = texture.get_height()/2


func set_it_left_centered() -> void:
	self.position.x = texture.get_width()/2
	self.position.y = screen_height/2

func set_it_right_centered() -> void:
	self.position.x = screen_width - texture.get_width()/2
	self.position.y = screen_height/2
