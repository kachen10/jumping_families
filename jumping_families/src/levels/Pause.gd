extends Control

func _input(event):
	if event.is_action_pressed("pause"):
		var new_pause_state = true;
		get_tree().paused = new_pause_state
		visible = new_pause_state
		
