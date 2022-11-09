extends MoveState

@export var dash_time = 0.3

var dash_direction: int = 0

func enter() -> void:
	#set dash direction and animation
	pass

func input(event: InputEvent) -> int:
	return State.Null

func process(delta: float) -> int:
	
	#if dash timer is running
		return State.Null
	#else
		#if movement pressed
			#return State.Run 
		return State.Idle

