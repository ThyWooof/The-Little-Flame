class_name BaseEnemy
extends CharacterBody2D

@export var health: int = 1
@export var speed: float = 50

@onready var sprite: AnimatedSprite2D = $AnimatedSprite2D

var dead: bool = false

func taking_damage():
	health -= 1
	if health == 0:
		dead = true
		sprite.play("dying")

func dying() -> void:
	velocity = Vector2.ZERO
	set_collision_layer_value(2, false)
	set_collision_mask_value(2, false)
	if sprite.animation == "dying" and not sprite.is_playing(): 
		queue_free()
