extends Control

func _input(event):
	if event.is_action_pressed("pause"):
		var new_pause_state = not get_tree().paused;
		get_tree().paused = new_pause_state
		get_tree().change_scene("res://src/title_screen/PauseMenu.tscn")
		
