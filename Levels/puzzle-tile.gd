extends TextureButton

var number

signal tile_pressed
signal slide_completed

func set_new_number(new_number):
	number = new_number
	$Number/Label.text = str(number)

func set_sprite(new_frame, size, tile_size):
	var sprite = $Sprite2D
	
	#update_size(size, tile_size)
	sprite.set_hframes(size)
	sprite.set_vframes(size)
	sprite.set_frame(new_frame)

func update_size(size, tile_size):
	var new_size = Vector2(tile_size, tile_size)
	set_size(tile_size)
	$Number.set_size(new_size)
	$Number.ColorRect.set_size(new_size)
	$Label.set_size(new_size)
	$Panel.set_size(new_size)
	
	var to_scale = size * (new_size / $Sprite2D.texture.get_size())
	$Sprite2D.set_scale(to_scale)
	
func slide_to(new_position, duration):
	var tween = get_tree().create_tween()
	tween.tween_property(self, "rect_position", new_position, duration)
	tween.start
