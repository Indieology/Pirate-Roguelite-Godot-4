class_name MoveState
extends BaseState

@export var move_speed = 60

func input(event: InputEvent) -> int:
	if Input.is_action_just_pressed("ui_accept"):
		return State.Dash
	
	return State.Null
	

func physics_process(delta: float) -> int:
	
	var direction : Vector2 = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	
	player.velocity = direction * move_speed
	player.move_and_slide()
	
	if player.velocity == Vector2.ZERO:
		return State.Idle
	
	return State.Null
