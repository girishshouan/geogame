extends Node2D

@export var dialogue_resource: DialogueResource

@onready var pause_menu = $Camera2D/PauseMenu
var paused = false

func _on_button_pressed():
	if global.answered_question == true:
		get_tree().change_scene_to_file("res://Levels/final_scene.tscn")
		

func _process(_delta):
	#pause_menu.hide()
	if Input.is_action_just_pressed("Pause"):
		pauseMenu()
		

func pauseMenu():
	if paused:
		pause_menu.hide()
		Engine.time_scale = 1
	else:
		pause_menu.show()
		Engine.time_scale = 0
		
	paused = !paused
