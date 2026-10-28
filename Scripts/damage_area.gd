extends Area2D

func _on_timer_timeout() -> void:
	var enemies_in_range = get_overlapping_bodies()
	
	for enemy in enemies_in_range:
		enemy.taking_damage()
