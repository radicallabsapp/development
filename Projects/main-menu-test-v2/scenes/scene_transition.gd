extends CanvasLayer

@onready var fade_rect   := $FadeRect
@onready var anim_player := $FadeOutRect

var _next_scene : PackedScene = null

func _ready() -> void:
	anim_player.animation_finished.connect(_on_animation_finished)

func fade_in():
	anim_player.play("fade_in")

func fade_out_to_scene(scene: PackedScene):
	_next_scene = scene
	anim_player.play("fade_out")

func _on_animation_finished(anim_name: String):
	if anim_name == "fade_out" and _next_scene:
		get_tree().change_scene_to_packed(_next_scene)
		anim_player.play("fade_in")
		_next_scene = null
