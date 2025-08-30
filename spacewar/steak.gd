#extends CharacterBody2D
#var velo = Vector2()
#func _ready() -> void:
	##starting position
	#position = Vector2(400, 500)
	#
#func _process(delta):
	#
	#
	#var screen_size = get_viewport_rect().size
	#position.x = clamp(position.x, 0, screen_size.x)
	#position.y = clamp(position.y, 0, screen_size.y)
	#
	#
	#position += Vector2(-.5, .75) * 60 * delta
	#rotation += (.5) * 2 * delta

extends CharacterBody2D

var speed = 150  
var move_direction = 1  
var move_range = 200 
var velo = Vector2()
var start_position = Vector2()  # Initial starting position

func _ready():
	start_position = position  # Save the starting position of the enemy

func _process(delta):
	velo = Vector2()
	var collision = move_and_collide(velo *delta)
	
	if collision:
		velo = Vector2()
	# Move up and down independently along the Y-axis
	position.y += move_direction * speed * delta

	# Check if the enemy has moved out of the defined range
	if position.y >= start_position.y + move_range:
		move_direction = -1  # Move up
	elif position.y <= start_position.y - move_range:
		move_direction = 1  # Move down
	
	# Optionally, clamp the position to screen boundaries (to prevent the enemy going off-screen)
	var screen_size = get_viewport().size
	position.y = clamp(position.y, 0, screen_size.y)
