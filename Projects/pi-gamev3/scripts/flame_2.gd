extends Area2D

const FLAME_KNOCKBACK_FORCE := -250.0  # tweak for how high the flame launches the player

func _on_body_entered(body: Node2D) -> void:
	print("ON FIRE!!")

	if body.has_method("launch_up"):
		# Launch the player
		body.launch_up(FLAME_KNOCKBACK_FORCE)

		# Play the player's jump animation as a "damage" placeholder
		if body.has_node("AnimatedSprite2D"):
			var anim: AnimatedSprite2D = body.get_node("AnimatedSprite2D")
			anim.play("jump")
