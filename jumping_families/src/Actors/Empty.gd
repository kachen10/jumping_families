extends KinematicBody2D

var current_position = Vector2(0, 1600)
var end_game: bool = false

# zoom in/out (larger values zoom out)
func _ready() -> void:
	$Camera2D.set_zoom(Vector2(0.7, 0.7))

func _physics_process(delta: float) -> void:
	current_position.y -= 6.0
	set_position(current_position)
	check_camera()

func check_camera() -> void:
	if $Camera2D.get_camera_position().y < 400:
		end_game = true
