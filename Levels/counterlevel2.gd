extends Label

var counter = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if global.answered_question_sphinx_counter:
		counter += 1
		global.answered_question_sphinx_counter = false
		
	if global.answered_question_debris_counter:
		counter += 1
		global.answered_question_debris_counter = false
		
	if global.answered_question_pyramid_counter:
		counter += 1
		global.answered_question_pyramid_counter = false
		
	if global.answered_question_oasis_counter:
		counter += 1
		global.answered_question_oasis_counter = false
		
	if global.answered_question_tomb_counter:
		counter += 1
		global.answered_question_tomb_counter = false
		
	text = "Answers: %s / 5" % counter
