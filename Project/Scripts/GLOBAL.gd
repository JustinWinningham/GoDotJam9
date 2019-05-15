extends Node

var BestTime

var config_files := {
	user = {
		path = "user://user.ini",
		},
	}


func _ready() -> void:
	# Load all Config Files
	for key in config_files:
		var config_file: Dictionary = config_files[key]
		config_file.config = ConfigFile.new()
		config_file.config.load(config_file.path)
	pass

func _process(delta):
	pass
