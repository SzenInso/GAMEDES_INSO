extends Node2D

func _ready() -> void:
	#starting position
	position = Vector2(800, 200)
	
func _process(delta):
	var screen_size = get_viewport_rect().size
	position.x = clamp(position.x, 0, screen_size.x)
	position.y = clamp(position.y, 0, screen_size.y)
	
	position += Vector2(-.5, .75) * 60 * delta
	rotation += (.5) * 2 * delta
