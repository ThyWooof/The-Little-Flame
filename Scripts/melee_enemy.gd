extends BaseEnemy

func _physics_process(_delta: float) -> void:
	if player.to_global(global_position).length() < min_distance:
		movement()
	else:
		movement()
	
	move_and_slide()
