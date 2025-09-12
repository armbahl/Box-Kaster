###############################################################################
### Options screen and back buttons
###############################################################################

extends Control

### Main "Options" existence
func _ready():
	pass

### Per-frame calling (UNUSED)
func _process(_delta):
	pass

### "Options" back button existence - READS CONFIG
func _on_op_exit_ready():
	var config = ConfigFile.new()
	if config.load("user://options.cfg") != OK:
		return
	else:
		var higher = config.get_value("CBDims", "higher")
		var lower = config.get_value("CBDims", "lower")
		var lip = config.get_value("Lip", "LipValue")
		
		$"/root/Start/OptScrn/DCS_Cont/DCS_A".text = str(lower)
		$"/root/Start/OptScrn/DCS_Cont/DCS_B".text = str(higher)
		$"/root/Start/OptScrn/LS_Cont/LS_Slider".value = lip
		
	Formulas.lipCheck()
	
### "Options" back button pressed - SAVES CONFIG
func _on_op_exit_pressed():
	var config = ConfigFile.new()
	var HV = float($"/root/Start/OptScrn/DCS_Cont/DCS_B".text)
	var LV = float($"/root/Start/OptScrn/DCS_Cont/DCS_A".text)
	var lip = $"/root/Start/OptScrn/LS_Cont/LS_Slider".value
	config.set_value("CBDims", "higher", HV)
	config.set_value("CBDims", "lower", LV)
	config.set_value("Lip", "LipValue", lip)
	config.save("user://options.cfg")
	$"/root/Start/MainScrn/CardSize_Cont/CardSizeA".text = str(LV)
	$"/root/Start/MainScrn/CardSize_Cont/CardSizeB".text = str(HV)
	Formulas.daButton()
	InSwitch.ViewSwitch(1)

### Real-time view of lip value
func _on_ls_slider_value_changed(_value):
	Formulas.lipCheck()

### Help button
func _on_op_help_pressed():
	InSwitch.ViewSwitch(4)

### Help back button
func _on_bk_back_pressed():
	InSwitch.ViewSwitch(2)

### How To button
func _on_how_to_pressed():
	InSwitch.ViewSwitch(5)
