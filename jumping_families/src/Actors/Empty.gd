extends KinematicBody2D

var current_position = Vector2(0, 1600)
var end_game: bool = false
	
func _physics_process(delta: float) -> void:
	current_position.y -= 6
	set_position(current_position)
	check_camera()

func check_camera() -> void:
	if $Camera2D.get_camera_position().y < 400:
		end_game = true
