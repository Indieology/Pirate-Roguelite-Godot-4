extends BaseState
#idle state

func input(event: InputEvent) -> int:
	if Input.is_action_pressed("ui_left") or Input.is_action_pressed("ui_right"):
		return State.Walk
	elif Input.is_action_just_pressed("ui_accept"):
		return State.Dash
	return State.Null

func physics_process(delta: float) -> int:
	player.move_and_slide()
	
	return State.Null
