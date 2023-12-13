extends Label

var counter = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if global.answered_question_shelf_counter:
		counter += 1
		global.answered_question_shelf_counter = false
		
	if global.answered_question_board_counter:
		counter += 1
		global.answered_question_board_counter = false
		
	if global.answered_question_picture_counter:
		counter += 1
		global.answered_question_picture_counter = false
		
	if global.answered_question_music_counter:
		counter += 1
		global.answered_question_music_counter = false
		
	if global.answered_question_file_counter:
		counter += 1
		global.answered_question_file_counter = false
		
	text = "Answers: %s / 5" % counter
