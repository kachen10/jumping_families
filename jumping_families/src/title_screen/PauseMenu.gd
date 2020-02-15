extends Control

# Called when the node enters the scene tree for the first time.
func _ready():
	$MarginContainer/VBoxContainer/VBoxContainer/Resume.grab_focus()
	

func _physics_process(delta):
	if $MarginContainer/VBoxContainer/VBoxContainer/Resume.is_hovered():
		get_tree().get_current_scene().get_name()
		$MarginContainer/VBoxContainer/VBoxContainer/Resume.grab_focus()
	if $MarginContainer/VBoxContainer/VBoxContainer/Exit.is_hovered():
		get_tree().get_current_scene().get_name()
		$MarginContainer/VBoxContainer/VBoxContainer/Exit.grab_focus()

func _on_Resume_pressed():
	print("resume pressed")
	get_tree().change_scene("res://src/levels/Level1.tscn")


func _on_Exit_pressed():
	print(get_tree().get_current_scene().get_name())
	print("exit pressed")
	get_tree().quit()

