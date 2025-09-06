extends CharacterBody2D

func _ready() -> void:
	var rng := RandomNumberGenerator.new()
	# Starting position
	#position = Vector2(850, 300)
	var width = get_viewport().get_visible_rect().size[0]
	var random_x = rng.randi_range(0, width)
	var random_y = rng.randi_range(150, 50)
	position = Vector2(random_x, random_y)
	
func _process(delta):
	# Get screen size
	#var _screen_size = get_viewport_rect().size

	# Apply movement first
	position += Vector2(-.5, .75) * 60 * delta
	rotation += (.5) * 1 * delta

func _on_body_entered(body):
	print ('body entered')
	print(body)
