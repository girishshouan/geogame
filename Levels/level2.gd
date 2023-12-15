extends Node2D

@onready var pause_menu = $Camera2D/PauseMenu
@onready var timer = get_node("Camera2D/Timer")
@onready var pb = get_node("Camera2D/ProgressBar")

var paused = false
var answered_all = true

# Called when the node enters the scene tree for the first time.
func _ready():
	global.current_scene = 2
	timer.wait_time = pb.value


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if Input.is_action_just_pressed("Pause"):
		pauseMenu()
	
	if global.answered_question_sphinx and global.answered_question_debris and global.answered_question_oasis and global.answered_question_tomb and global.answered_question_pyramid and answered_all:
		var balloon = load("res://endstory/balloon.tscn").instantiate()
		get_tree().current_scene.add_child(balloon)
		balloon.start(load("res://Dialogue/levelcomplete.dialogue"), "level1")
		answered_all = false
	
	pb.value = timer.time_left
	if pb.value == 0:
		get_tree().quit()


func pauseMenu():
	if paused:
		pause_menu.hide()
		Engine.time_scale = 1
	else:
		pause_menu.show()
		Engine.time_scale = 0
		
	paused = !paused


func _on_button_pressed():
	if global.answered_question_pyramid:
		get_tree().change_scene_to_file("res://Levels/final_scene.tscn")
