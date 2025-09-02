extends CharacterBody2D

const SPEED = 80
const JUMP_VELOCITY = -300.0
const MAX_JUMPS = 2  # 1 normal jump + 1 double jump

@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D

var jumps_left: int = MAX_JUMPS

func _physics_process(delta: float) -> void:
	
	# Add gravity
	if not is_on_floor():
		velocity += get_gravity() * delta
		
	# Reset jumps when landing
	if is_on_floor():
		jumps_left = MAX_JUMPS

	# Handle jump
	if Input.is_action_just_pressed("ui_accept") and jumps_left > 0:
		velocity.y = JUMP_VELOCITY
		jumps_left -= 1

	# Movement input
	var direction := Input.get_axis("ui_left", "ui_right")

	# Flip sprite
	if direction < 0:
		animated_sprite.flip_h = false
	elif direction > 0:
		animated_sprite.flip_h = true

	# Play animations
	if is_on_floor():
		if direction == 0:
			animated_sprite.play("idle")
		else:
			animated_sprite.play("move")
	else:
		animated_sprite.play("jump")

	# Apply movement
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()

# 🟢 New function to bounce player when stomping enemy
func launch_up(force: float) -> void:
	velocity.y = force
