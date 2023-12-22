extends Node2D

@export var dialogue_resource: DialogueResource

@onready var pause_menu = $Camera2D/PauseMenu
var paused = false
var answered_all = true
var scene_stack = []
var counter = 0

func generate_questions() -> void:
	global.random_one = randi_range(1,2)
	global.random_two = randi_range(1,2)
	global.random_three = randi_range(1,2)
	global.random_four = randi_range(1,2)
	global.random_five = randi_range(1,2)

func _ready():
	global.current_scene = 1
	var balloon = load("res://beginjourney/balloon.tscn").instantiate()
	get_tree().current_scene.add_child(balloon)
	balloon.start(load("res://Dialogue/begincontext.dialogue"), "start")
	generate_questions()


# for escape button
func _on_button_pressed():
	if global.answered_question_shelf and global.answered_question_picture and global.answered_question_board and global.answered_question_music and global.answered_question_file:
		get_tree().change_scene_to_file("res://Levels/level2.tscn")

func _process(_delta):
	
	if Input.is_action_just_pressed("Pause"):
		pauseMenu()
		
	if global.view_picture == true:
		#get_tree().change_scene_to_file("res://Levels/ishikawa.tscn")
		var balloon = load("res://endstory/balloon.tscn").instantiate()
		get_tree().current_scene.add_child(balloon)
		balloon.start(load("res://Dialogue/test.dialogue"), "ishikawa")
		global.view_picture = false
	
	
	# after player answers all 5 correct, show dialogue so player knows he can escape to next room
	if global.answered_question_shelf and global.answered_question_picture and global.answered_question_board and global.answered_question_music and global.answered_question_file and answered_all:
		var balloon = load("res://endstory/balloon.tscn").instantiate()
		get_tree().current_scene.add_child(balloon)
		balloon.start(load("res://Dialogue/levelcomplete.dialogue"), "level1")
		answered_all = false

func pauseMenu():
	if paused:
		pause_menu.hide()
		Engine.time_scale = 1
	else:
		pause_menu.show()
		Engine.time_scale = 0
		
	paused = !paused


func _on_timer_timeout():
	get_tree().change_scene_to_file("res://Levels/timer_timeout.tscn")
