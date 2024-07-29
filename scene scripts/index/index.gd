extends Control

var strings = [
	"HIII",
	"Joel",
	"subtext",
	"jetsWave",
	"cr4zyk3Wave",
	"cr4zyk3WaveAnim",
	"[rainbow]very pog",
	"[i](this was sent from godot)[/i]",
	":3",
	"geiser approved", #imgeiser
	"[color=8f1b13]crimson crimson crimson crimson[/color]", #that_one_valokas
	"(not) Sponsored by RAID SHADOW LEGENDS", #that_one_valokas
	"(not) Sponsored by Godot (yet)",
	"AS SEEN ON [url]https://twitch.tv/cr4zyk1tty[/url]", 
	"[color=red]WAKE UP WAKE UP WAKE UP WAKE UP WAKE UP[/color]", #that_one_valokas
	"i never stopped believing"
]

@onready var subtext = $subtext


# Called when the node enters the scene tree for the first time.
func _ready():
	change_text()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if Input.is_action_just_pressed("[DEBUG] change subtext"):
		change_text()

func change_text():
	var random_index = randi() % strings.size()
	subtext.text = "[outline_color=000000][outline_size=8][font_size=16][wave connected=0][center]" + strings[random_index]

# button controls

func _on_twitch_pressed():
	print("twitch")
	OS.shell_open("https://twitch.tv/cr4zyk1tty/")

func _on_twitter_pressed():
	print("twitter")
	OS.shell_open("https://x.com/CrazyKitty357")

func _on_old_site_pressed():
	print("go to the old site")
	OS.shell_open("https://crazykitty357.github.io/")

func _on_gimmick_page_pressed():
	print("go to stream gimmick page")
	get_tree().change_scene_to_file("res://Pages/stream gimmick/stream gimmick.tscn")


func _on_subtext_meta_clicked(meta):
	OS.shell_open(meta)
