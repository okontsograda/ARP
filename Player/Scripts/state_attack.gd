class_name State_Attack extends State

@onready var walk = $"../Walk"

## What happens when the player enters this State
func Enter() -> void:
	print("Attacking...")
	player.UpdateAnimation("attack")
	pass
	
## What happens when the player exists this state
func Exit() -> void:
	pass

## What happens during the _process update in this state
func Process ( _delta : float ) -> State:
	if player.direction != Vector2.ZERO:
		return walk
	player.velocity = Vector2.ZERO
	return null

## What happens during the _physics_process update in this state
func Physics( _delta : float ) -> State:
	return null

## What happens with input events in this state
func HandleInput( _event : InputEvent ) -> State:
	return null
