extends Node2D 

@onready var timer = $Timer
@onready var timer_label = $Timer/TimerLabel  

var countdown = 60

func _on_timer_timeout():
	countdown -= 1
	if countdown >= 0:
		timer_label.text = str(countdown)
	else:
		timer.stop()
		timer_label.text = "Time's up!"
