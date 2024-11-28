class_name State extends Node

## Stores a reference to the player that this State belongs to
static var player: Player

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

## What happens when the player enters this State
func Enter() -> void:
	pass
	
## What happens when the player exists this state
func Exit() -> void:
	pass

## What happens during the _process update in this state
func Process ( _delta : float ) -> State:
	return null

## What happens during the _physics_process update in this state
func Physics( _delta : float ) -> State:
	return null

## What happens with input events in this state
func HandleInput( _event : InputEvent ) -> State:
	return null
