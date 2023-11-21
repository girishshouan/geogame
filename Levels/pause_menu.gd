extends Control

@onready var level1 = $"../../"
@export var dialogue_resource: DialogueResource
@export var dialogue_start: String = "start"


func _on_resume_pressed():
	level1.pauseMenu()




func _on_quit_pressed():
	get_tree().quit()


func _on_oracle_pressed():
	get_tree().change_scene_to_file("res://Levels/oracle_scene.tscn")
