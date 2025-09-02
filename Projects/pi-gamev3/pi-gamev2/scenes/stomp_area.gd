extends Area2D

const BOUNCE_FORCE := -420

func _on_body_entered(body: Node) -> void:
	print("Stomp hit:", body.name)

	# Bounce the player if possible
	if body.has_method("launch_up"):
		body.launch_up(BOUNCE_FORCE)
	elif body is CharacterBody2D:
		(body as CharacterBody2D).velocity.y = BOUNCE_FORCE

	# Optional: kill enemy
	queue_free()
