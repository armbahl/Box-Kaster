###############################################################################
### CFG legends:
#### Main.gd = Final function calls
#### Formulas.gd (Formulas) = Main mathematical functions with variable loading
#### InputSwitch.gd (InSwitch) = Handles large switches
#### BackToMain.gd = Handles "Options" functions as well as "Back" buttons
###############################################################################

extends Node

### Called when the node enters the scene tree for the first time.
func _ready():
	# Checks for config and creates one if not present/has 0 value
	if ConfigFile.new().load("user://options.cfg") != OK || \
	($"/root/Start/MainScrn/CardSize_Cont/CardSizeA".text == "0" &&\
	$"/root/Start/MainScrn/CardSize_Cont/CardSizeB".text == "0"):
		$"/root/Start/MainScrn/CardSize_Cont/CardSizeA".text = "30"
		$"/root/Start/MainScrn/CardSize_Cont/CardSizeB".text = "50"
		var config = ConfigFile.new()
		config.set_value("CBDims", "lower", 30)
		config.set_value("CBDims", "higher", 50)
		config.set_value("Lip", "LipValue", 7)
		config.save("user://options.cfg")
	
	# Config check pass
	else:
		Formulas.daConfig()

### Main screen per-frame area (unused)
func _process(_delta):
	pass

### Allow ENTER to act as "Calculate" button
func _input(event):
	if event.is_action_pressed("CalcIt"):
		Formulas.daButton()

### Main screen "Calculate" button action
func _on_calc_button_pressed():
	Formulas.daButton()
	
### Shows the OPTIONS screen
func _on_opt_button_pressed():
	$"/root/Start/OptScrn".visible = true
	$"/root/Start/MainScrn".visible = false
	$"/root/Start/LicScrn".visible = false
	$"/root/Start/HelpScrn".visible = false
	
### Shows the LICENSES screen
func _on_lic_button_pressed():
	$"/root/Start/LicScrn/HBoxContainer/LicB_BoxKaster".grab_focus()
	$"/root/Start/LicScrn".visible = true
	$"/root/Start/OptScrn".visible = false
	$"/root/Start/MainScrn".visible = false
	$"/root/Start/HelpScrn".visible = false
