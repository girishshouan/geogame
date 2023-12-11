extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	var balloon = load("res://endstory/balloon.tscn").instantiate()
	get_tree().current_scene.add_child(balloon)
	balloon.start(load("res://Dialogue/losestory.dialogue"), "losestory")
	
	
	

func _unhandled_input(_event: InputEvent) -> void:
	if Input.is_action_just_pressed("ui_accept"):
		get_tree().quit()
		
