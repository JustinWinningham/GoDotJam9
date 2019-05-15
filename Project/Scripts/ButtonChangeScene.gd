extends Button

export(String) var scenePath


func _ready():

	pass

func _pressed():
	get_tree().change_scene(scenePath)
	if get_tree().paused:
		get_tree().paused = false

