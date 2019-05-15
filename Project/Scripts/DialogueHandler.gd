extends Control

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
func _fire(strang, readT):
	if processing:
		return
	else:
		textLen = strang.length()
		theText = strang
		readTime = readT
		visible = true
		processing = true