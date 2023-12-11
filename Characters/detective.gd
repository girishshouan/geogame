extends CharacterBody2D

@export var movement_speed : float = 100.0
@export var starting_direction : Vector2 = Vector2(0.0, 1.0)
#parameters/Idle/blend_position
@onready var animation_tree = $AnimationTree
@onready var actionable_finder = $Direction/ActionableFinder
@onready var state_machine = animation_tree.get("parameters/playback")

func _ready():
	update_animation_parameters(starting_direction)

func _physics_process(_delta):
	'''
	if Input.is_action_just_pressed("Interact") and global.actionable_mutex == 0:
		global.actionable_mutex = 1
		var actionables = actionable_finder.get_overlapping_areas()
		if actionables.size() > 0:
			actionables[0].action()
			return
		global.actionable_mutex = 0
	'''
		#DialogueManager.show_example_dialogue_balloon(load("res://Dialogue/test.dialogue"), "start")
		#return
	
	#Get input direction
	var input_direction = Vector2(
		Input.get_action_strength("right") - Input.get_action_strength("left"),
		Input.get_action_strength("down") - Input.get_action_strength("up")
	)
	
	update_animation_parameters(input_direction)
	
	#Update velocity
	velocity = input_direction * movement_speed
	
	#Move function
	pick_new_state()
	move_and_slide()
	

func _unhandled_input(event):
	if Input.is_action_just_pressed("Interact"):
		var actionables = actionable_finder.get_overlapping_areas()
		if actionables.size() > 0:
			actionables[0].action()
			return
	
func update_animation_parameters(move_input : Vector2):
	if(move_input != Vector2.ZERO):
		animation_tree.set("parameters/Walk/blend_position", move_input)
		animation_tree.set("parameters/Idle/blend_position", move_input)
		

func pick_new_state():
	if(velocity != Vector2.ZERO):
		state_machine.travel("Walk")
	else:
		state_machine.travel("Idle")


func _on_button_pressed():
	pass # Replace with function body.
