extends Camera2D

var thePlayer

# Called when the node enters the scene tree for the first time.
func _ready():
	#thePlayer = get_parent().get_node("Player")
	thePlayer = get_parent()

func _process(delta):
	position.y = thePlayer.position.y # add floaty offset?
	position.x = thePlayer.position.x