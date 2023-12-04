extends Node2D



func _ready():
	var resource = null
	if global.current_scene == 1:
		resource = load("res://Dialogue/oracle.dialogue")
	elif global.current_scene == 2:
		resource = load("res://Dialogue/oracle2.dialogue")
	
	if global.oracle_help_taken < 2:
		DialogueManager.show_example_dialogue_balloon(resource, "oracle_dialogue_start")
	else:
		DialogueManager.show_example_dialogue_balloon(resource, "oracle_capacity_reached")

func _on_go_back_pressed():
	if global.current_scene == 1:
		get_tree().change_scene_to_file("res://Levels/level1.tscn")
	elif global.current_scene == 2:
		get_tree().change_scene_to_file("res://Levels/level2.tscn")
