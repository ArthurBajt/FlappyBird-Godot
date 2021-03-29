extends Spatial


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
const VITESSE = 10

# Called when the node enters the scene tree for the first time.
func _ready():
	scale.y = Globals.rng.randf_range(1.0, 3.0)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	translation.x -= VITESSE * delta


func _on_Area_body_shape_entered(body_id, body, body_shape, area_shape):
	if body.get_class() == "Joueur":
		body.prendUnMur()
