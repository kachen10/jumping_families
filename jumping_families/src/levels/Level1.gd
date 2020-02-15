extends Node2D

var minions = Array()
export var num_relatives = 2
var in_viewPort: int

func _ready() -> void:
	set_process(true)

func _physics_process(delta: float) -> void:
	if ($Empty.get("end_game")):
		check_minions()
	
func check_minions() -> void:
	in_viewPort = 0
	for i in range(num_relatives):
		if i == 0:
			name = "Player"
		else:
			name = "Player" + str(i)

		if get_node(name).get("inViewport"):
			in_viewPort += 1
	
	if in_viewPort == 0:
		get_tree().change_scene("res://src/levels/End.tscn")
		
	print(in_viewPort)
	global.score = in_viewPort
