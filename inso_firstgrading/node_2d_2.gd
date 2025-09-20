extends Node2D

@export var scroll_speed := 200.0
@onready var track1 := $TextureRect1
@onready var track2 := $TextureRect2

func _process(delta):
	# Move both textures down
	track1.position.y += scroll_speed * delta
	track2.position.y += scroll_speed * delta

	# If track1 goes off screen, reset it to above track2
	if track1.position.y >= track1.texture.get_height():
		track1.position.y = track2.position.y - track1.texture.get_height()

	# If track2 goes off screen, reset it to above track1
	if track2.position.y >= track2.texture.get_height():
		track2.position.y = track1.position.y - track2.texture.get_height()
