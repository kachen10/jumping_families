extends Control

# Called when the node enters the scene tree for the first time.
func _ready():
	$MarginContainer/VBoxContainer/VBoxContainer/Resume.grab_focus()
	

func _physics_process(delta):
	if $MarginContainer/VBoxContainer/VBoxContainer/Resume.is_hovered():
		$MarginContainer/VBoxContainer/VBoxContainer/Resume.grab_focus()
	if $MarginContainer/VBoxContainer/VBoxContainer/Exit.is_hovered():
		$MarginContainer/VBoxContainer/VBoxContainer/Exit.grab_focus()
		
func _input(event):
	if event.is_action_pressed("pause"):
		var new_pause_state = not get_tree().paused;
		get_tree().paused = new_pause_state	
		if new_pause_state:
			show()
		else:
			hide()
		
func _on_Resume_pressed():
	if get_tree().paused:
		get_tree().paused = false
	hide()


func _on_Exit_pressed():
	get_tree().quit()

