###############################################################################
### Mathematics handling
###############################################################################

extends Node

### "Calculate" button functions
func daButton():
## Variables
	var cardA = float($"/root/Start/MainScrn/CardSize_Cont/CardSizeA".text)
	var cardB = float($"/root/Start/MainScrn/CardSize_Cont/CardSizeB".text)
	var sizeA
	var sizeB
	var lon = float($"/root/Start/MainScrn/BoxSize_Cont/BoxSizeA".text)
	var mid = float($"/root/Start/MainScrn/BoxSize_Cont/BoxSizeB".text)
	var sho = float($"/root/Start/MainScrn/BoxSize_Cont/BoxSizeC".text)
	var x = 9999
	var y = 0
	var z = 0
	$"/root/Start/MainScrn/Agree_txt".visible = false
	
## Switchers
	# Main screen cardboard size switcher
	# DOES NOT SAVE TO CFG; SEE "Options Back Button" (BackToMain.gd)
	if cardA > cardB:
		sizeA = cardB
		sizeB = cardA
	else:
		sizeA = cardA
		sizeB = cardB
	
	# Takes the main inputs and sorts them from greatest to least
	var Marr = [x,y,z]
	var Varr = [lon,mid,sho]
	
	for i in range(3):
		if Varr[i] < Marr[0]:
			Marr[0] = Varr[i]
			z = Marr[0]
	
	for i in range(3):
		if Varr[i] > Marr[2]:
			Marr[2] = Varr[i]
			x = Marr[2]
	
	for i in range(3):
		if (Varr[i] < Marr[2]) && (Varr[i] > Marr[0]):
			Marr[1] = Varr[i]
			y = Marr[1]
		elif Marr[1] == 0:
			for j in range(1,3):
				if Varr[i] == Varr[j]:
					Marr[1] = Varr[j]
					y = Marr[1]
	
## Equations
	# Regular box
	var aA = z
	var aB = z+x
	var aC = z+x+z
	var aD = z+x+z+x
	var aE # Loads with lip modifier below
	
	var bA = z
	var bB = z+y
	var bC = z+y+z
	var bD = z+y+z+y
	var bE # Loads with lip modifier below
	
	var zzz = InSwitch.lipSize()
	var aBb = zzz+x
	var aCc = zzz+x+zzz
	var bBb = zzz+y
	var bCc = zzz+y+zzz
	
	# Allows for telescoping box lip adjustment
	if InSwitch.lipSize() == 0 || InSwitch.lipSize() > z:
		zzz = z
		aBb = z+x
		aCc = z+x+z
		aE = z+x+z+x+z
		bBb = z+y
		bCc = z+y+z
		bE = z+y+z+y+z
	else:
			aE = aD+InSwitch.lipSize()
			bE = bD+InSwitch.lipSize()
	
	# Outputs nothing on zero
	if x == 0 || y == 0 || z == 0:
		pass
		
	# REG [1]
	elif aE <= sizeA:
		$"/root/Start/MainScrn/Display_Cont/VBoxContainer/vLabel_A".text = str(aE)
		$"/root/Start/MainScrn/Display_Cont/VBoxContainer/vLabel_B".text = str(aD)
		$"/root/Start/MainScrn/Display_Cont/VBoxContainer/vLabel_C".text = str(aC)
		$"/root/Start/MainScrn/Display_Cont/VBoxContainer/vLabel_D".text = str(aB)
		$"/root/Start/MainScrn/Display_Cont/VBoxContainer/vLabel_E".text = str(aA)
		$"/root/Start/MainScrn/Display_Cont/HBoxContainer/hLabel_E".text = str(bA)
		$"/root/Start/MainScrn/Display_Cont/HBoxContainer/hLabel_D".text = str(bB)
		$"/root/Start/MainScrn/Display_Cont/HBoxContainer/hLabel_C".text = str(bC)
		InSwitch.DispVis(1)
		
	elif bE <= sizeA && aC <= sizeB:
		$"/root/Start/MainScrn/Display_Cont/VBoxContainer/vLabel_A".text = str(bE)
		$"/root/Start/MainScrn/Display_Cont/VBoxContainer/vLabel_B".text = str(bD)
		$"/root/Start/MainScrn/Display_Cont/VBoxContainer/vLabel_C".text = str(bC)
		$"/root/Start/MainScrn/Display_Cont/VBoxContainer/vLabel_D".text = str(bB)
		$"/root/Start/MainScrn/Display_Cont/VBoxContainer/vLabel_E".text = str(bA)
		$"/root/Start/MainScrn/Display_Cont/HBoxContainer/hLabel_E".text = str(aA)
		$"/root/Start/MainScrn/Display_Cont/HBoxContainer/hLabel_D".text = str(aB)
		$"/root/Start/MainScrn/Display_Cont/HBoxContainer/hLabel_C".text = str(aC)
		InSwitch.DispVis(1)
		
	elif bE <= sizeB && aC <= sizeA:
		$"/root/Start/MainScrn/Display_Cont/VBoxContainer/vLabel_C".text = str(aC)
		$"/root/Start/MainScrn/Display_Cont/VBoxContainer/vLabel_D".text = str(aB)
		$"/root/Start/MainScrn/Display_Cont/VBoxContainer/vLabel_E".text = str(aA)
		$"/root/Start/MainScrn/Display_Cont/HBoxContainer/hLabel_E".text = str(bA)
		$"/root/Start/MainScrn/Display_Cont/HBoxContainer/hLabel_D".text = str(bB)
		$"/root/Start/MainScrn/Display_Cont/HBoxContainer/hLabel_C".text = str(bC)
		$"/root/Start/MainScrn/Display_Cont/HBoxContainer/hLabel_B".text = str(bD)
		$"/root/Start/MainScrn/Display_Cont/HBoxContainer/hLabel_A".text = str(bE)
		InSwitch.DispVis(2)
		
	# TELE [1]
	elif aC <= sizeA:
		$"/root/Start/MainScrn/Display_Cont/VBoxContainer/vLabel_C".text = str(aC)
		$"/root/Start/MainScrn/Display_Cont/VBoxContainer/vLabel_D".text = str(aB)
		$"/root/Start/MainScrn/Display_Cont/VBoxContainer/vLabel_E".text = str(aA)
		$"/root/Start/MainScrn/Display_Cont/HBoxContainer/hLabel_E".text = str(bA)
		$"/root/Start/MainScrn/Display_Cont/HBoxContainer/hLabel_D".text = str(bB)
		$"/root/Start/MainScrn/Display_Cont/HBoxContainer/hLabel_C".text = str(bC)
		$"/root/Start/MainScrn/Display_Cont/T_VBoxContainer/T_vLabel_A".text = str(aCc+0.5)
		$"/root/Start/MainScrn/Display_Cont/T_VBoxContainer/T_vLabel_B".text = str(aBb+0.5)
		$"/root/Start/MainScrn/Display_Cont/T_VBoxContainer/T_vLabel_C".text = str(zzz)
		$"/root/Start/MainScrn/Display_Cont/T_HBoxContainer/T_hLabel_C".text = str(zzz)
		$"/root/Start/MainScrn/Display_Cont/T_HBoxContainer/T_hLabel_B".text = str(bBb+0.5)
		$"/root/Start/MainScrn/Display_Cont/T_HBoxContainer/T_hLabel_A".text = str(bCc+0.5)
		InSwitch.DispVis(3)
		
	# TELE [2]
	elif bC <= sizeA && aC <= sizeB:
		$"/root/Start/MainScrn/Display_Cont/VBoxContainer/vLabel_C".text = str(bC)
		$"/root/Start/MainScrn/Display_Cont/VBoxContainer/vLabel_D".text = str(bB)
		$"/root/Start/MainScrn/Display_Cont/VBoxContainer/vLabel_E".text = str(bA)
		$"/root/Start/MainScrn/Display_Cont/HBoxContainer/hLabel_E".text = str(aA)
		$"/root/Start/MainScrn/Display_Cont/HBoxContainer/hLabel_D".text = str(aB)
		$"/root/Start/MainScrn/Display_Cont/HBoxContainer/hLabel_C".text = str(aC)
		$"/root/Start/MainScrn/Display_Cont/T_VBoxContainer/T_vLabel_A".text = str(bCc+0.5)
		$"/root/Start/MainScrn/Display_Cont/T_VBoxContainer/T_vLabel_B".text = str(bBb+0.5)
		$"/root/Start/MainScrn/Display_Cont/T_VBoxContainer/T_vLabel_C".text = str(zzz)
		$"/root/Start/MainScrn/Display_Cont/T_HBoxContainer/T_hLabel_C".text = str(zzz)
		$"/root/Start/MainScrn/Display_Cont/T_HBoxContainer/T_hLabel_B".text = str(aBb+0.5)
		$"/root/Start/MainScrn/Display_Cont/T_HBoxContainer/T_hLabel_A".text = str(aCc+0.5)
		InSwitch.DispVis(3)
		
	# TOO LARGE
	else:
		InSwitch.DispVis(4)
	
### Creates the main config file
func daConfig():
	var config = ConfigFile.new()
	
	var err = config.load("user://options.cfg")
	if err != OK:
		pass
	
	var higher = config.get_value("CBDims", "higher")
	var lower = config.get_value("CBDims", "lower")
	$"/root/Start/MainScrn/CardSize_Cont/CardSizeA".text = str(lower)
	$"/root/Start/MainScrn/CardSize_Cont/CardSizeB".text = str(higher)

#### Lip size display for options menu
func lipCheck():
	var lip = $"/root/Start/OptScrn/LS_Cont/LS_Slider"
	var lipText =\
	$"/root/Start/OptScrn/LS_Cont/LS_Display"
	
	match lip.value:
		7.0:
			lipText.text = "FULL"
		6.0:
			lipText.text = "8"
		5.0:
			lipText.text = "7"
		4.0:
			lipText.text = "6"
		3.0:
			lipText.text = "5"
		2.0:
			lipText.text = "4"
		1.0:
			lipText.text = "3"
		0.0:
			lipText.text = "2"
