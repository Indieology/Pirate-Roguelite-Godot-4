class_name BaseState
extends Node

enum State {
	Null,
	Idle,
	Run,
	Dash
}

#export (string) var animation_name

var player: Player

func enter() -> void:
	#player.animations.play(animation_name)
	pass

func exit() -> void:
	pass

func input(event: InputEvent) -> int:
	return State.Null

func process(delta: float) -> int:
	return State.Null

func physics_process(delta: float) -> int:
	return State.Null
