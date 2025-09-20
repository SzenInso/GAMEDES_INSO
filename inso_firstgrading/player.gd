extends CharacterBody2D
@export var speed = 100
func _ready() -> void:
	pass

func _process(_delta) :
	var direction = Input.get_vector("left", "right", "up", "down")
	velocity = direction * speed
	move_and_slide()
