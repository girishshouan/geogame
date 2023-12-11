extends Node2D

@onready var timer = get_node("Timer")
@onready var pb = get_node("ProgressBar")

# Called when the node enters the scene tree for the first time.
func _ready():
	timer.wait_time = pb.value


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pb.value = timer.time_left
