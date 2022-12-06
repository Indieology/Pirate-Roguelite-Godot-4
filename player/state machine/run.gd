extends MoveState

func input(event: InputEvent) -> int:
	
	#Run MoveSate class code first to see if we need to change states
	var new_state = super.input(event)
	if new_state != State.Null:
		return new_state
	
	return State.Null

func enter() -> void:
	
	get_parent().get_parent().state_label.text = "run state"
