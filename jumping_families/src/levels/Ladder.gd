extends Area2D

func _physics_process(delta):
	var bodies = get_overlapping_bodies()
	for body in bodies:
		get_tree().change_scene("res://src/levels/End.tscn")
