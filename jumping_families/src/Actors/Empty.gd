extends KinematicBody2D

var current_position = Vector2(0, 1600)

func _physics_process(delta: float) -> void:
#	current_position.y -= 0.5
	set_position(current_position)
