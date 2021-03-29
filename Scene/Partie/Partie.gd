extends Node


onready var obstacles_origine: Spatial = $Root3D/ObstaclesOrigine
onready var NODE_PILIER = preload("res://Scene/Pilier/Pilier.tscn")

onready var timer: float = 0.0
const DELAY_PILIER: float = 1.0

# Called when the node enters the scene tree for the first time.
func _ready():
	var joueur = $Root3D/Joueur
	joueur.connect("prendUnMur", self, "gameOver")

func _process(delta):
	timer += delta
	if timer > DELAY_PILIER:
		ajoutePilier()
		timer = 0.0


func ajoutePilier():
	var instance = NODE_PILIER.instance()
	obstacles_origine.add_child(instance)


func gameOver():
	get_tree().change_scene("res://Scene/GameOver/GameOver.tscn")
