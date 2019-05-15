extends Camera2D

var thePlayer

# Called when the node enters the scene tree for the first time.
func _ready():
	thePlayer = get_parent().get_node("Player")

func _process(delta):
	position.y = thePlayer.position.y # add floaty offset?