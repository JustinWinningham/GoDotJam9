extends Sprite



func _ready():
	pass

func _process(delta):
	if Input.is_action_just_pressed("ui_cancel"):
		if get_tree().paused:
			print("unpausing")
			visible = false
			get_tree().paused = false
		else:
			print("pausing")
			get_tree().paused = true
			visible = true
	pass
