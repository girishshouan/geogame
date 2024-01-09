extends Area2D

const Balloon = preload("res://Dialogue/balloon.tscn")

@export var dialogue_resource: DialogueResource
@export var dialogue_start: String = "start"
@export var dialogue_over: String = "over"

func action() -> void:
	var balloon = load("res://Dialogue/balloon.tscn").instantiate()
	get_tree().current_scene.add_child(balloon)
	balloon.start(dialogue_resource, dialogue_start)
	if global.has_lost == true:
		get_tree().change_scene_to_file("res://Levels/lose_scene.tscn")

