extends Node2D

@export var dialogue_resource: DialogueResource

func _on_button_pressed():
	if global.answered_question == true:
		get_tree().change_scene_to_file("res://Levels/final_scene.tscn")
