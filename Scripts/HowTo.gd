###############################################################################
### How-To Screen
###############################################################################

extends ColorRect

# How To screen starting variable
var x = 1

func _ready():
	pass

func _process(_delta):
	pass

# How To back button
func _on_return_bt_pressed():
	x = 1
	InSwitch.HBox(x)
	InSwitch.ViewSwitch(4)

# How To next button
func _on_btn_next_pressed():
	x += 1
	InSwitch.HBox(x)

# How To previous button
func _on_btn_prev_pressed():
	x -= 1
	InSwitch.HBox(x)
