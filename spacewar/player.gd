extends CharacterBody2D
@export var speed = 400
func _ready() -> void:
	pass

func _process(_delta) :
	var direction = Input.get_vector("left", "right", "up", "down")
	velocity = direction * speed
	move_and_slide()
	#var screen_size = get_viewport_rect().size
	#position.x = clamp(position.x, 0, screen_size.x)
	#position.y = clamp(position.y, 0, screen_size.y)
	#var velocity = Vector2.ZERO
	#if Input.is_action_pressed("right"):
		#velocity.x += 1
	#if Input.is_action_pressed("left"):
		#velocity.x -= 1
	#if Input.is_action_pressed("down"):
		#velocity.y += 1
	#if Input.is_action_pressed("up"):
		#velocity.y -= 1
#
	#if velocity.length() > 0:
		#velocity = velocity.normalized() * speed
	#position += velocity * delta
