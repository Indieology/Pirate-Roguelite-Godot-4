extends BaseState
#idle state

func input(event: InputEvent) -> int:
	if Input.is_action_pressed("ui_left") or Input.is_action_pressed("ui_right") or Input.is_action_pressed("ui_up") or Input.is_action_pressed("ui_down"):
		return State.Run
	elif Input.is_action_just_pressed("ui_accept"):
		return State.Dash
	return State.Null

func physics_process(delta: float) -> int:
	player.move_and_slide()
	
	return State.Null

func enter() -> void:
	get_parent().get_parent().state_label.text = "idle state"
