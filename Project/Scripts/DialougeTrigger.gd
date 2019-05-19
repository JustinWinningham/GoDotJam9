extends Area2D


export(String) var theText
export(int) var readTime
export(bool) var isGod = false

var hasBeenFired = false
var thePlayer
var handler

func _ready():
	thePlayer = get_parent().get_parent().get_node("Player")
	var UI = get_parent().get_parent().get_node("MainCamera").get_node("CanvasLayer").get_node("UI")
	handler = UI.get_node("DialogueHandler")

func _process(delta):
	if thePlayer != null and handler != null and !handler.processing:
		if overlaps_body(thePlayer):
			if !hasBeenFired:
				handler._fire(theText, readTime, isGod)
				hasBeenFired = true
	pass