extends Node2D

var minions = Array()
export var num_relatives = 2
var in_viewPort: int
var score: int

func _physics_process(delta: float) -> void:
	if ($Empty.get("end_game")):
		check_minions()
	pass
	
func check_minions() -> void:
	in_viewPort = 0
	for i in range(num_relatives):
		if i == 0:
			name = "Player"
		else:
			name = "Player" + str(i)

		if get_node(name).get("inViewport"):
			in_viewPort += 1
	
	score = in_viewPort
