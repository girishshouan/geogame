extends Node

var current_scene = 0
var actionable_mutex = 0


#level 1 vars
var answered_question_shelf = false
var answered_question_board = false
var answered_question_picture = false
var answered_question_music = false
var answered_question_file = false

#level 1 vars for counter
var answered_question_shelf_counter = false
var answered_question_board_counter = false
var answered_question_picture_counter = false
var answered_question_music_counter = false
var answered_question_file_counter = false

var oracle_help_taken = 0

var shelf_tries = 1
var picture_tries = 1
var board_tries = 1
var music_tries = 1
var file_tries = 1

var tries = 1

var view_picture = false
var has_lost = false



#Level 2 vars
var random_one = 0
var random_two = 0
var random_three = 0
var random_four = 0
var random_five = 0
var answered_question_sphinx = false
var answered_question_debris = false
var answered_question_oasis = false
var answered_question_pyramid = false
var answered_question_tomb = false

#level 2 vars for counter
var answered_question_sphinx_counter = false
var answered_question_debris_counter = false
var answered_question_oasis_counter = false
var answered_question_pyramid_counter = false
var answered_question_tomb_counter = false

var sphinx_tries = 1
var debris_tries = 1
var oasis_tries = 1
var pyramid_tries = 1
var tomb_tries = 1

var oracle_help_taken_l2 = 0

