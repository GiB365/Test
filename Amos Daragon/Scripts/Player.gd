extends KinematicBody

onready var head = $Head

var sensitivity = 0.3

func _ready():
	Input.mouse_mode = Input.MOUSE_MODE_CAPTURED

func _input(event):
	if event is InputEventMouseMotion:
		var mouse_delta = event.relative
		
		rotate_y(deg2rad(-mouse_delta.x * sensitivity))
		head.rotate_x(deg2rad(-mouse_delta.y * sensitivity))
		
		head.rotation_degrees.x = clamp(head.rotation_degrees.x, -90, 90)
		
