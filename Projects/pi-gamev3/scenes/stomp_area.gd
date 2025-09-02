extends Area2D

const BOUNCE_FORCE := -420

func _on_body_entered(body: Node) -> void:
	# print("Stomp hit:", body.name)

	# Tell parent (the toaster) to play its boost animation
	if owner.has_method("play_boost_animation"):
		owner.play_boost_animation()

	# Bounce the player
	if body.has_method("launch_up"):
		body.launch_up(BOUNCE_FORCE)
	elif body is CharacterBody2D:
		(body as CharacterBody2D).velocity.y = BOUNCE_FORCE

#extends Area2D
#
#const BOUNCE_FORCE := -300
#
##
#func _on_body_entered(body: Node) -> void:
	#print("Stomp hit:", body.name)
##
	## Bounce the player if possible
	#if body.has_method("launch_up"):
		#body.launch_up(BOUNCE_FORCE)
	#elif body is CharacterBody2D:
		#(body as CharacterBody2D).velocity.y = BOUNCE_FORCE

	  # Optional: kill enemy
	  # queue_free()

#func _on_StompArea_body_entered(body: Node) -> void:
		## Bounce the player
	#if body.has_method("launch_up"):
		#body.launch_up(BOUNCE_FORCE)
	#elif body is CharacterBody2D:
		#(body as CharacterBody2D).velocity.y = BOUNCE_FORCE

		# Play enemy boost animation
		#animated_sprite_2d.play("boost")
		#is_stomped = true


		# Optional: remove the enemy after animation ends
		#await animated_sprite_2d.animation_finished
		#queue_free()
