extends Area2D

const Balloon = preload("res://Dialogue/balloon.tscn")

@export var dialogue_resource: DialogueResource
@export var dialogue_start: String = "start"
@export var dialogue_over: String = "over"


func action() -> void:
	#var balloon : Node = Balloon.instantiate()
	#get_tree().current_scene.add_child(balloon)
	#balloon.start(dialogue_resource, dialogue_start)
	'''
	if global.has_lost != true:
		DialogueManager.show_example_dialogue_balloon(dialogue_resource, dialogue_start)
	else:
		DialogueManager.show_example_dialogue_balloon(dialogue_resource, dialogue_over)
		await get_tree().create_timer(5.5).timeout
		get_tree().quit()
	'''
	#get_node("exclamation").show()
	log(global.has_lost)
	#DialogueManager.show_example_dialogue_balloon(dialogue_resource, dialogue_start)
	#var balloon = load("res://Dialogue/balloon.tscn").instantiate()
	#get_tree().current_scene.add_child(balloon)
	#balloon.start(load("res://Dialogue/test.dialogue"), "start")
	var balloon = load("res://Dialogue/balloon.tscn").instantiate()
	get_tree().current_scene.add_child(balloon)
	#balloon.start(load("res://Dialogue/test.dialogue"), dialogue_start)
	balloon.start(dialogue_resource, dialogue_start)
	if global.has_lost == true:
		await get_tree().create_timer(5.5).timeout
		get_tree().quit()
