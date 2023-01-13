extends Node

var port = 6969
var ip = "192.168.4.29"
var max_players = 4
var player_info = {}
var my_info = {name = "Null", id = 0}

onready var Player = load("res://Scenes/Player.tscn")

func _ready():
	get_tree().connect("network_peer_connected", self, "_player_connected")
	get_tree().connect("network_peer_disconnected", self, "_player_disconnected")
	get_tree().connect("connected_to_server", self, "_connected_to_server")
	get_tree().connect("server_disconnected", self, "_server_disconnected")
	
func create_server():
	var server = NetworkedMultiplayerENet.new()
	server.create_server(port, max_players)
	get_tree().network_peer = server
	my_info.id = get_tree().get_network_unique_id()
	
func create_client():
	var peer = NetworkedMultiplayerENet.new()
	peer.create_client(ip, port)
	get_tree().network_peer = peer
	my_info.id = get_tree().get_network_unique_id()

func _server_disconnected():
	print("disconected from server")

func _connected_to_server():
	print("connected to server " + str(ip))
	
	instance_player(get_tree().get_network_unique_id())
	
func _player_connected(id):
	print("Player " + str(id) + " has connected")
	
	instance_player(id)
	
func _player_disconnected(id):
	print("Player" + str(id) + " has disconnected")
	
	if Players.has_node(str(id)):
		Players.get_node(str(id)).queue_free()
	
func instance_player(id):
	var player_instance = Globals.instance_node_at_location(Player, Players, Vector3(0, 10, 0))
	player_instance.name = str(id)
	player_instance.set_network_master(id)
