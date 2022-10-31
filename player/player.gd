class_name Player
extends CharacterBody2D

@onready var sprite = $Sprite2D
@onready var states = $state_manager

func _ready() -> void:
	pass

func _unhandled_input(event: InputEvent):
	pass

func _physics_process(delta: float) -> void:
	pass
