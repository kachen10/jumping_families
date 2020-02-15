extends Path2D

onready var enemy:= get_node("Path")
func _physics_process(delta):
	enemy.set_offset(enemy.get_offset() + 50 * delta)
