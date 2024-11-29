class_name EnemyStateIdle extends EnemyState

@export var animation_name : String = "idle"

@export_category("AI")
@export var state_duration_min : float = 0.5
@export var state_duration_max : float = 1.5
@export var after_idle_state : EnemyState

var _timer : float = 0.0


## What happens when we initialize this state?
func init() -> void:
	pass
	
## What happens when the enemy enters this State?
func enter() -> void:
	enemy.velocity = Vector2.ZERO
	_timer = randf_range( state_duration_min, state_duration_max )
	enemy.update_animation( animation_name )
	pass
	
## What happens when the enemy exists this State?
func exit() -> void:
	pass
	
## What happens during the _process update in this State?
func process( _delta : float ) -> EnemyState:
	# Count down our timer between states
	_timer -= _delta
	
	# If timer is out, set the next state after idle
	if _timer <= 0:
		return after_idle_state
	return null
	
## What happens during the _physics_process update in this state?
func physics( _delta : float ) -> EnemyState:
	return null
