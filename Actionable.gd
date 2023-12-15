extends Area2D

const Balloon = preload("res://Dialogue/balloon.tscn")

@export var dialogue_resource: DialogueResource
@export var dialogue_start: String = "start"
@export var dialogue_over: String = "over"


func generate_questions() -> void:
	global.random_one = randi_range(1,2)
	global.random_two = randi_range(1,2)
	global.random_three = randi_range(1,2)
	global.random_four = randi_range(1,2)
	global.random_five = randi_range(1,2)

func action() -> void:
	generate_questions()
	var balloon = load("res://Dialogue/balloon.tscn").instantiate()
	get_tree().current_scene.add_child(balloon)
	balloon.start(dialogue_resource, dialogue_start)
	if global.has_lost == true:
		await get_tree().create_timer(5.5).timeout
		get_tree().change_scene_to_file("res://Levels/lose_scene.tscn")

