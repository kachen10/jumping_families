extends VBoxContainer

func _ready() -> void:
	var dynamic_font = DynamicFont.new()
	dynamic_font.font_data = load("res://Assets/hf-free-complete/compass-pro-v1.1/CompassPro.ttf")
	dynamic_font.size = 120
	dynamic_font.outline_size = 5
	dynamic_font.outline_color = Color( 0, 0, 0, 1 )
	dynamic_font.use_filter = true

	var label = Label.new()

	label.text = str(global.score)
	label.rect_size.x = 320
	label.rect_size.y = 200
	label.set_valign(2)
	label.add_font_override("font", dynamic_font)
	label.add_color_override("font_color", Color.white)

	add_child(label)
