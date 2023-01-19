extends Sprite

var screen_width = OS.get_window_size().x
var screen_height = OS.get_window_size().y
var velocity = 100
var velo_treshold = 100
var accelartion = 9.81*5
var movement_vector = Vector2(0,0)

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
	#move_left(delta)
	#move_right(delta)
	bound_effect()
	move(delta)

func bound_effect():
	if self.position.x + texture.get_width() /2 > screen_width:
		self.position.x = texture.get_width() /2
	elif self.position.x + texture.get_width() /2 < texture.get_width():
		self.position.x = screen_width - texture.get_width() /2
	elif self.position.y + texture.get_height() /2 > screen_height:
		self.position.y = texture.get_height() /2
	elif self.position.y + texture.get_height() /2 < texture.get_height():
		self.position.y = screen_height - texture.get_height() /2

func move(delta):
	if Input.is_key_pressed(KEY_W):
		movement_vector.y = -velocity
	if Input.is_key_pressed(KEY_S):
		movement_vector.y = velocity
	if Input.is_key_pressed(KEY_A):
		movement_vector.x = -velocity
	if Input.is_key_pressed(KEY_D):
		movement_vector.x = velocity
	if movement_vector.x != 0 and movement_vector.y != 0:
		movement_vector.x /= sqrt(2)
		movement_vector.y /= sqrt(2)

	print(movement_vector)
	self.position.x += movement_vector.x*delta
	self.position.y += movement_vector.y*delta
	movement_vector.x = 0
	movement_vector.y = 0

#func set_direction(event):
#	if event.get_scancode() == KEY_W:
#		active_direction = "up"
#	elif event.get_scancode() == KEY_S:
#		active_direction = "down"
#	elif event.get_scancode() == KEY_A:
#		active_direction = "left"
#	elif event.get_scancode() == KEY_D:
#		active_direction = "right"
#	else :
#		active_direction = null

#func move_right(delta) -> void:
#	self.position.x += velocity*delta

#func move_left(delta) -> void:
#	self.position.x -= velocity*delta

#func move_up(delta) -> void:
#	self.position.y -= velocity*delta

#func move_down(delta) -> void:
#	self.position.y += velocity*delta


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
