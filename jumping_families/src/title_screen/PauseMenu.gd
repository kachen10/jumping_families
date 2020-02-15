extends Control

# Called when the node enters the scene tree for the first time.
func _ready():
	$MarginContainer/VBoxContainer/VBoxContainer/Resume.grab_focus()
	pass # Replace with function body.

func _physics_process(delta):
	if $MarginContainer/VBoxContainer/VBoxContainer/Resume.is_hovered():
		$MarginContainer/VBoxContainer/VBoxContainer/Resume.grab_focus()
	if $MarginContainer/VBoxContainer/VBoxContainer/Exit.is_hovered():
		$MarginContainer/VBoxContainer/VBoxContainer/Exit.grab_focus()


func _on_Resume_pressed():
	get_tree().change_scene("res://src/levels/Level1.tscn")


func _on_Exit_pressed():
	get_tree().quit()
