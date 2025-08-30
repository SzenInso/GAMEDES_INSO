extends Node2D

func _ready() -> void:
	# Starting position
	position = Vector2(850, 300)

func _process(delta):
	# Get screen size
	var screen_size = get_viewport_rect().size

	# Apply movement first
	position += Vector2(-.5, .75) * 60 * delta
	rotation += (.5) * 1 * delta

	# Then clamp the position to keep it within bounds
	position.x = clamp(position.x, 0, screen_size.x)
	position.y = clamp(position.y, 0, screen_size.y)
