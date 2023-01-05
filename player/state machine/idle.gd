extends BaseState
#idle state

func input(event: InputEvent) -> int:
	if Input.is_action_pressed("move_left") or Input.is_action_pressed("move_right") or Input.is_action_pressed("move_up") or Input.is_action_pressed("move_down"):
		return State.Run
	elif Input.is_action_just_pressed("ui_accept"):
		return State.Dash
	return State.Null

func physics_process(delta: float) -> int:
	player.move_and_slide()
	
	return State.Null

func enter() -> void:
	player.state_label.text = "idle state"
