extends KinematicBody


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var saut: int = 0
const PUISSANCE_SAUT: int = 8


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	appliquePhysique(delta)


func _input(event):
	if event is InputEventKey:
		if event.pressed and event.scancode == KEY_SPACE:
			saut = PUISSANCE_SAUT
		
		else:
			saut = 0


func appliquePhysique(delta):
	translation.y += saut * delta
