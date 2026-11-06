class_name BaseEnemy
extends CharacterBody2D

@export var health: int = 1
@export var speed: float = 50
@export var min_distance: int

@onready var sprite: AnimatedSprite2D = $AnimatedSprite2D
@onready var player: CharacterBody2D = get_tree().get_first_node_in_group("player")

var dead: bool = false

func movement() -> void:
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

func taking_damage() -> void:
	health -= 1
	if health == 0:
		dead = true
		sprite.play("dying")

func dying() -> void:
	velocity = Vector2.ZERO
	set_collision_layer_value(2, false)
	set_collision_mask_value(1, false)
	set_collision_mask_value(2, false)
	if sprite.animation == "dying" and not sprite.is_playing(): 
		queue_free()
