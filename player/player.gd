class_name Player
extends CharacterBody2D

@onready var sprite = $Sprite2D #Player sprite node
@onready var states = $state_manager #State machine attached to player
@onready var state_label = $Label #Label to display current state

func _ready() -> void:
	#Initialize state machine by passing a reference of the player to all states
	states.init(self)

func _unhandled_input(event: InputEvent):
	states.input(event)

func _physics_process(delta: float) -> void:
	states.physics_process(delta)

func update_sprite(sprite_key: int) -> void:
	sprite.frame = sprite_key
