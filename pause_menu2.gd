extends Control

@onready var level1 = $"../../"
@export var dialogue_resource: DialogueResource
@export var dialogue_start: String = "start"


func _on_resume_pressed():
	level1.pauseMenu()


func _on_quit_pressed():
	get_tree().quit()


func _on_oracle_pressed():
	#get_tree().change_scene_to_file("res://Levels/oracle_scene.tscn")
	var balloon = load("res://endstory/balloon.tscn").instantiate()
	#var balloon = load("res://forOracle/balloon.tscn").instantiate()
	get_tree().current_scene.add_child(balloon)
	if global.current_scene == 1:
		balloon.start(load("res://Dialogue/oracle.dialogue"), "oracle_dialogue_start")
	elif global.current_scene == 2:
		balloon.start(load("res://Dialogue/oracle2.dialogue"), "oracle_dialogue_start")
