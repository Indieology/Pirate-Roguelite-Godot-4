class_name BaseState
extends Node

enum State {
	Null,
	Idle,
	Run
}

var player: Player

func enter() -> void:
	pass

func exit() -> void:
	pass

func input(event: InputEvent) -> int:
	return State.Null

func process(delta: float) -> int:
	return State.Null

func physics_process(delta: float) -> int:
	return State.Null
