extends Node2D



func _ready():
	var resource = load("res://Dialogue/oracle.dialogue")
	if global.oracle_help_taken < 2:
		DialogueManager.show_example_dialogue_balloon(resource, "oracle_dialogue_start")
	else:
		DialogueManager.show_example_dialogue_balloon(resource, "oracle_capacity_reached")

func _on_go_back_pressed():
	get_tree().change_scene_to_file("res://Levels/level1.tscn")
