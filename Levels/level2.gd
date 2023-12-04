extends Node2D

@onready var pause_menu = $Camera2D/PauseMenu
var paused = false

# Called when the node enters the scene tree for the first time.
func _ready():
	global.current_scene = 2


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
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


func _on_button_pressed():
	get_tree().change_scene_to_file("res://Levels/final_scene.tscn")
