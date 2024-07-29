extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass


# Handle Opening URLS
func _on_bottom_window_text_meta_clicked(meta):
	OS.shell_open(meta)

func _on_back_pressed():
	get_tree().change_scene_to_file("res://index.tscn")

func _on_tts_pressed():
	$Window.show()
	$Window/TopWindowText.set_text("[center]More about the TTS.")
	$Window/BottomWindowText.set_text("[center]The TTS is powered by an old program called DECTALK. You can do a lot of cool things with it like play music. Cover vocaloid songs. You can also play dialtones and so much more! to learn more about the wonders of DECTALK read the documentation [url=https://www.digikey.com/htmldatasheets/production/1122220/0/0/1/dectalk-guide.html]here[/url] or by sending !ttshelp in chat. You can try it out online [url=https://tts.cyzon.us]here[/url]. There is also a converter made by [url=https://prod.kr/v]prodzpod[/url] (it's also converts to [url=https://twitch.tv/lcolonq]lcolonq bells (sponsored by bezelea)[/url] and the [url=https://twitch.tv/imgeiser]geiser[/url] formats.) you can go to it [url=https://pub.colonq.computer/~prod/toy/dbkai/]here[/url].")

func _on_chat_pressed():
	$Window.show()
	$Window/TopWindowText.set_text("[center]More about the on-screen chat.")
	$Window/BottomWindowText.set_text("[center]The on-screen chat runs in a 'custom' godot 4.1 application that uses [url=https://github.com/erodozer/tmi.gd]tmi.gd[/url] to display twitch chat. This chat supports bbcode so you can add flair to your messages by making them [i]italic[/i], [b]bold[/b] or even [rainbow]rainbow[/rainbow]! if you want to learn how to do this dark art please read the documentation [url=https://docs.godotengine.org/en/4.1/tutorials/ui/bbcode_in_richtextlabel.html]here[/url], or by sending !bbcode in chat. You can try out bbcode and it's [tornado]quirks[/tornado] now by using the bbcode tester!")

func _on_bb_code_tester_pressed():
	get_tree().change_scene_to_file("res://Pages/bbcode tester/bbcode tester.tscn")
