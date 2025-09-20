extends CharacterBody2D

@export var acceleration: float = 30.0
@export var max_speed: float = 20.0

func _physics_process(delta):
	var forward_direction = Vector2.UP.rotated(rotation)
	velocity += forward_direction * acceleration * delta

	if velocity.length() > max_speed:
		velocity = velocity.normalized() * max_speed

	move_and_slide()
	
