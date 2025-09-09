extends Control

const FIRST_LEVEL := preload("res://scenes/level_1.tscn")

@onready var start_btn   := $BUTTON_CONTAINER/StartButton
@onready var options_btn := $BUTTON_CONTAINER/OptionsButton

func _ready() -> void:
	start_btn.pressed.connect(_on_start_pressed)
	options_btn.pressed.connect(_on_options_pressed)
	start_btn.grab_focus()
	SceneTransition.fade_in() # fade in menu when loaded

func _on_start_pressed() -> void:
	SceneTransition.fade_out_to_scene(FIRST_LEVEL)

func _on_options_pressed() -> void:
	if $OptionsPopup:
		$OptionsPopup.popup_centered()
