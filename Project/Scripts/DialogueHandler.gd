extends Control


var devil = preload("res://Art/devil01.png")
var god = preload("res://Art/god01.png")

var theText = ""
var processing = false
var textLen = 0
var idx = 0
var readTime = 180


func _process(delta):
	if processing:
		if idx != textLen:
			$Label.text = theText.left(idx)
			idx += 1
			# If we wanted to have a sound effect, we would put it here (after adding a sound handler and all that)
		else:
			readTime -= 1
			print (readTime)
			if readTime == 0:
				visible = false
				theText = ""
				idx = 0
				textLen = 0
				processing = false
				readTime = 180
		
	pass
func _fire(strang, readT, isGod):
	if processing:
		return
	else:
		if isGod:
			$Sprite.texture = god
		else:
			$Sprite.texture = devil
		textLen = strang.length()
		theText = strang
		readTime = readT
		visible = true
		processing = true