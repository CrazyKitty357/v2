extends Control

# Called when the node enters the scene tree for the first time.
func _ready():
	$BBCodeTestBox/HBoxContainer/BBCodeTestTextEdit.connect("text_changed", Callable(self, "_on_text_changed"))
	_on_text_changed()  # Initialize with default text

# Called when the text is changed.
func _on_text_changed():
	var text = $BBCodeTestBox/HBoxContainer/BBCodeTestTextEdit.text
	if text == "":
		text = "your text here. you can make it [b]bold[/b] [i]italic[/i] or even [wave][rainbow]rainbow[/rainbow][/wave]"
	$BBCodeTestBox/HBoxContainer/BBCodeTestText.set_text(text)

func _on_back_button_pressed():
	get_tree().change_scene_to_file("res://Pages/stream gimmick/stream gimmick.tscn")

func _on_bottom_text_meta_clicked(meta):
	OS.shell_open(meta)
