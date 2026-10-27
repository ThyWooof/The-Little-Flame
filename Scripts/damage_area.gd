extends Area2D

func _physics_process(_delta: float) -> void:
	var enemies_in_range = get_overlapping_bodies()
	
	for enemy in enemies_in_range:
		enemy.taking_damage()
