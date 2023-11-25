extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	var dialogue_resource = load("res://Dialogue/test.dialogue")
	DialogueManager.show_example_dialogue_balloon(dialogue_resource, "ishikawa")


func _on_back_button_pressed():
	global.view_picture = false
	get_tree().change_scene_to_file("res://Levels/level1.tscn")


func _on_oracle_button_pressed():
	global.view_picture = false
	get_tree().change_scene_to_file("res://Levels/oracle_scene.tscn")
