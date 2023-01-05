extends MoveState


func enter() -> void:
	#set dash direction and play animation
	#super.enter()
	
	player.state_label.text = "dash state"
	
	player.dash_timer.start()
	
func input(event: InputEvent) -> int:
	return State.Null

func physics_process(delta: float) -> int:
	if player.dash_timer.time_left > 0:
		#last_valid_movement_direction is not updating properly yet
		player.velocity = last_valid_movement_direction * dash_speed
		player.move_and_slide()
		return State.Null
	else:
		player.velocity = Vector2.ZERO
		if Input.is_action_pressed("move_left") or Input.is_action_pressed("move_right") or Input.is_action_pressed("move_up") or Input.is_action_pressed("move_down"):
			return State.Run
		else:
			return State.Idle
