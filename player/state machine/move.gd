class_name MoveState
extends BaseState

@export var move_speed = 60
@export var dash_speed = 120

var last_valid_movement_direction : Vector2 = Vector2.LEFT

func input(event: InputEvent) -> int:
	if Input.is_action_just_pressed("ui_accept"):
		return State.Dash
	
	return State.Null
	

func physics_process(delta: float) -> int:
	
	var direction : Vector2 = get_movement_input()
	
	player.velocity = direction * move_speed
	player.move_and_slide()
	
	#print(player.velocity)
	
	
	if player.velocity == Vector2.ZERO:
		return State.Idle
	
	return State.Null

func get_movement_input() -> Vector2:
	var player_input = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	if player_input != Vector2.ZERO:
		last_valid_movement_direction = player_input
	return player_input
