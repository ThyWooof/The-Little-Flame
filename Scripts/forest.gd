extends Node2D

func spawn_slime():
	var new_slime = preload("res://Scenes/Entities/melee_enemy.tscn").instantiate()
	
	%PathFollow2D.progress_ratio = randf()
	new_slime.global_position = %PathFollow2D.global_position
	
	add_child(new_slime)

func _on_timer_timeout() -> void:
	spawn_slime()
