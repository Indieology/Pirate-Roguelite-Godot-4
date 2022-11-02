class_name Player
extends CharacterBody2D

@onready var sprite = $Sprite2D
@onready var states = $state_manager

func _ready() -> void:
	states.init(self)

func _unhandled_input(event: InputEvent):
	states.input(event)

func _physics_process(delta: float) -> void:
	states.physics_process(delta)

