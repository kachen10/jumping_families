extends Actor

export var inViewport: bool
var frozen = true;
var change := 1.0

func _on_player_exited(viewport: Viewport) -> void:
	frozen = true
	inViewport = false

func _on_player_entered(viewport: Viewport) -> void:
	frozen = false
	inViewport = true

func _ready() -> void:
	show()
	if position.y > 1100:
		frozen = false;

func _physics_process(delta: float) -> void:
	if !frozen:
		var is_jump_interrupted := Input.is_action_just_released("jump") and _velocity.y < 0.0
		var direction: = get_direction()
		if Input.is_action_just_released("jump"):
			set_collision_mask_bit(2, false)
		elif _velocity.y > 0:
			set_collision_mask_bit(2, true)
		_velocity = calculate_move_velocity(_velocity, direction, speed, is_jump_interrupted)
		_velocity = move_and_slide(_velocity, FLOOR_NORMAL)

func get_direction() -> Vector2:
	var movement_val = Input.get_action_strength("move_right") - Input.get_action_strength("move_left")
	
	if movement_val < 0:
		$AnimationPlayer.set_current_animation("walk_left")
	elif movement_val > 0:
		$AnimationPlayer.set_current_animation("walk_right")
	else:
		$AnimationPlayer.set_current_animation("")
	change = -1.0 if Input.is_action_just_pressed("jump") and is_on_floor() else 1.0
	if Input.is_action_pressed("jump") || change == -1.0:
		set_collision_mask_bit(2, false)
	else:
		set_collision_mask_bit(2, true)
	return Vector2(
		movement_val,
		change
	)

func calculate_move_velocity(
		linear_velocity: Vector2,
		direction: Vector2,
		speed: Vector2,
		is_jump_interrupted: bool
	) -> Vector2:
	var out = linear_velocity
	out.x = speed.x * direction.x
	out.y += gravity * get_physics_process_delta_time()
	if direction.y == -1.0:
		out.y = speed.y * direction.y
	if is_jump_interrupted:
		out.y = 0.0
	return out
