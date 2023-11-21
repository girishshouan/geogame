extends Area2D

#const Balloon = preload("res://Dialogue/balloon.tscn")

@export var dialogue_resource: DialogueResource
@export var dialogue_start: String = "start"
@export var dialogue_over: String = "over"

func action() -> void:
	#var balloon : Node = Balloon.instantiate()
	#get_tree().current_scene.add_child(balloon)
	#balloon.start(dialogue_resource, dialogue_start)
	if global.tries < 2:
		DialogueManager.show_example_dialogue_balloon(dialogue_resource, dialogue_start)
	else:
		DialogueManager.show_example_dialogue_balloon(dialogue_resource, dialogue_over)
		await get_tree().create_timer(5.5).timeout
		get_tree().quit()
