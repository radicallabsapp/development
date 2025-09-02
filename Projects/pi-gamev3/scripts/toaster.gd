extends Node2D

const SPEED = 40
var direction = 1

@onready var ray_cast_right: RayCast2D = $RayCastRight
@onready var ray_cast_left: RayCast2D = $RayCastLeft
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D

func _ready():
	animated_sprite_2d.animation_finished.connect(_on_animation_finished)

func _process(delta: float) -> void:
	# Patrol logic
	if ray_cast_right.is_colliding():
		direction = -1
		animated_sprite_2d.flip_h = true
	if ray_cast_left.is_colliding():
		direction = 1
		animated_sprite_2d.flip_h = false

	# Move
	position.x += direction * SPEED * delta

func play_boost_animation():
	animated_sprite_2d.play("boost")

func _on_animation_finished():
	if animated_sprite_2d.animation == "boost":
		animated_sprite_2d.play("move")

#extends Node2D
#
#const SPEED = 40
#
#var direction = 1
#
#@onready var ray_cast_right: RayCast2D = $RayCastRight
#@onready var ray_cast_left: RayCast2D = $RayCastLeft
#@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D
#
#func _process(delta: float) -> void:
	## Patrol logic
	#if ray_cast_right.is_colliding():
		#direction = -1
		#animated_sprite_2d.flip_h = true
	#if ray_cast_left.is_colliding():
		#direction = 1
		#animated_sprite_2d.flip_h = false
#
	## Move
	#position.x += direction * SPEED * delta
	
#func _on_StompArea_body_entered(body: Node) -> void:
	#if body.is_in_group("Player"):
		## Bounce the player
		#if body.has_method("launch_up"):
			#body.launch_up(BOUNCE_FORCE)
#
		## Play enemy boost animation
		#animated_sprite_2d.play("boost")
		#is_stomped = true
