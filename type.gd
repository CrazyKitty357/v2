extends Node

var input_buffer = ""

func _ready():
	set_process_input(true)

func _input(event):
	if event is InputEventKey and event.pressed:
		if event.unicode != 0:
			input_buffer += char(event.unicode)
			if input_buffer.to_lower().ends_with("jetswave"):  # make sure to match the case
				print("jetsWave")
				call_rng_function()
		elif event.scancode == KEY_BACKSPACE and input_buffer.length() > 0:
			input_buffer = input_buffer.substr(0, input_buffer.length() - 1)

		# Optional: Clear buffer if it gets too long to avoid memory issues
		if input_buffer.length() > 100:
			input_buffer = input_buffer.substr(input_buffer.length() - 100, 100)

func call_rng_function():
	var root = get_tree().root.get_child(0)  # Get the root node of the scene
	if root.has_method("jetsWave"):
		root.call("jetsWave")
