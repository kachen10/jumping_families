extends Control

# Called when the node enters the scene tree for the first time.
func _ready():
	$MarginContainer/VBoxContainer/VBoxContainer/NewGame.grab_focus()
	pass # Replace with function body.

func _physics_process(delta):
	if $MarginContainer/VBoxContainer/VBoxContainer/NewGame.is_hovered():
		$MarginContainer/VBoxContainer/VBoxContainer/NewGame.grab_focus()
	if $MarginContainer/VBoxContainer/VBoxContainer/Exit.is_hovered():
		$MarginContainer/VBoxContainer/VBoxContainer/Exit.grab_focus()


func _on_NewGame_pressed():
	get_tree().change_scene("res://src/levels/Level1.tscn")


func _on_Exit_pressed():
	get_tree().quit()
