extends Control

onready var Back = $Back
onready var Main_text = $Always/Main_text

onready var Host = $Main_UI/Host
onready var Join = $Main_UI/Join
onready var Settings = $Main_UI/Settings
onready var Quit = $Main_UI/Quit

onready var IP_Join = $Join_UI/IP_Join
onready var IP_Line = $Join_UI/IP_Line

onready var Main_UI = $Main_UI
onready var Join_UI = $Join_UI
onready var Settings_UI = $Settings_UI

func _ready():
	Host.connect("pressed", self, "Host")
	Join.connect("pressed", self, "Join")
	Settings.connect("pressed", self, "Settings")
	Quit.connect("pressed", self, "Quit")
	Back.connect("pressed", self, "Back")
	IP_Join.connect("pressed", self, "IP_Join")
	
func Host():
	print("Host")
	Network.create_server()
	Network.instance_player(get_tree().get_network_unique_id())
	get_tree().change_scene("res://Scenes/Lobby.tscn")
	
func Join():
	print("Join")
	Main_UI.hide()
	Join_UI.show()
	Back.show()
	Main_text.text = "Insère le IP"
	
func Settings():
	print("Settings")
	Main_UI.hide()
	Settings_UI.show()
	Back.show()
	Main_text.text = "Paramètres"

func Quit():
	print("Quit")
	get_tree().quit()
	
func Back():
	for child in get_children():
		if child.name != "Always":
			child.hide()
		if child.name == "Main_UI":
			child.show()
		Main_text.text = "Game thing"
			
func IP_Join():
	print("IP Join")
	Network.create_client()
	get_tree().change_scene("res://Scenes/Lobby.tscn")
