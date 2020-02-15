extends RichTextLabel

# not working
func _ready() -> void:
#	print(global.score)
	var format_score = "%s"
	var actual_score = format_score % global.score
	append_bbcode("actual_score")
