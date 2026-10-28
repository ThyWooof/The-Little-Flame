extends BaseEnemy

@onready var player: CharacterBody2D = get_tree().get_first_node_in_group("player")

func _physics_process(_delta: float) -> void:
	var direction = global_position.direction_to(player.global_position)
	velocity = direction * speed
	
	if direction.x < 0:
		sprite.flip_h = true
	elif direction.x > 0:
		sprite.flip_h = false
	
	if direction.length() > 0: 
		if dead == false:
			sprite.play("running")
	
	if dead == true: 
		dying()
	
	move_and_slide()
