extends CharacterBody2D
@export var speed: float = 0
@onready var player = get_node("/root/Forest/Player")
@onready var sprite: AnimatedSprite2D = $AnimatedSprite2D

var health = 50
var dead: bool = false

func _physics_process(_delta: float) -> void:
	var direction = global_position.direction_to(player.global_position)
	velocity = direction * speed
	
	if direction.length() > 0: 
		if dead == false:
			sprite.play("running")
	
	if dead == true: 
		velocity = Vector2.ZERO
	
	move_and_slide()

func taking_damage():
	health -= 1
	if health == 0:
		dead = true
		sprite.play("dying")

func dying() -> void:
	if sprite.animation == "dying": 
		queue_free()
