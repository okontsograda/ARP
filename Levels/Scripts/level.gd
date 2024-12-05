class_name Level extends Node2D



# Called when the node enters the scene tree for the first time.
func _ready():
	self.y_sort_enabled = true
	PlayerManager.set_as_parent( self )
	
	LevelManager.level_load_started.connect( _free_level)
	pass 

func _free_level(  ) -> void:
	# Unparent player before freeing level
	PlayerManager.unparent_player( self )
	queue_free()
	pass
