###############################################################################
### Switches
###############################################################################

extends Node

# Slider true value
func lipSize():
	var config = ConfigFile.new()
	if config.load("user://options.cfg") != OK:
		pass
	else:
		var lip = config.get_value("Lip", "LipValue")
		match lip:
			7.0:
				return 0
			6.0:
				return 8
			5.0:
				return 7
			4.0:
				return 6
			3.0:
				return 5
			2.0:
				return 4
			1.0:
				return 3
			0.0:
				return 2
			_:
				return 999

# Cutting area displays visibility
func DispVis(z):
	match z:
		## V short, H long
		1:
			# VISIBLE
			$"/root/Start/MainScrn/Display_Cont/VLine".visible = true
			$"/root/Start/MainScrn/Display_Cont/HLine".visible = true
			$"/root/Start/MainScrn/Display_Cont/VBoxContainer".visible = true
			$"/root/Start/MainScrn/Display_Cont/HBoxContainer".visible = true
			$"/root/Start/MainScrn/Display_Cont/VBoxContainer/vLabel_A".visible = true
			$"/root/Start/MainScrn/Display_Cont/VBoxContainer/vLabel_B".visible = true
			$"/root/Start/MainScrn/Display_Cont/VBoxContainer/vLabel_C".visible = true
			$"/root/Start/MainScrn/Display_Cont/VBoxContainer/vLabel_D".visible = true
			$"/root/Start/MainScrn/Display_Cont/VBoxContainer/vLabel_E".visible = true
			$"/root/Start/MainScrn/Display_Cont/HBoxContainer/hLabel_E".visible = true
			$"/root/Start/MainScrn/Display_Cont/HBoxContainer/hLabel_D".visible = true
			$"/root/Start/MainScrn/Display_Cont/HBoxContainer/hLabel_C".visible = true
			# HIDDEN
			$"/root/Start/MainScrn/Display_Cont/T_VLine".visible = false
			$"/root/Start/MainScrn/Display_Cont/T_HLine".visible = false
			$"/root/Start/MainScrn/Display_Cont/T_VBoxContainer".visible = false
			$"/root/Start/MainScrn/Display_Cont/T_HBoxContainer".visible = false
			$"/root/Start/MainScrn/Display_Cont/HBoxContainer/hLabel_B".visible = false
			$"/root/Start/MainScrn/Display_Cont/HBoxContainer/hLabel_A".visible = false
			$"/root/Start/MainScrn/Display_Cont/T_VBoxContainer/T_vLabel_A".visible = false
			$"/root/Start/MainScrn/Display_Cont/T_VBoxContainer/T_vLabel_B".visible = false
			$"/root/Start/MainScrn/Display_Cont/T_VBoxContainer/T_vLabel_C".visible = false
			$"/root/Start/MainScrn/Display_Cont/T_HBoxContainer/T_hLabel_C".visible = false
			$"/root/Start/MainScrn/Display_Cont/T_HBoxContainer/T_hLabel_B".visible = false
			$"/root/Start/MainScrn/Display_Cont/T_HBoxContainer/T_hLabel_A".visible = false
			$"/root/Start/MainScrn/Display_Cont/TooLarge".visible = false
		## V long, H short
		2:
			# VISIBLE
			$"/root/Start/MainScrn/Display_Cont/VLine".visible = true
			$"/root/Start/MainScrn/Display_Cont/HLine".visible = true
			$"/root/Start/MainScrn/Display_Cont/VBoxContainer".visible = true
			$"/root/Start/MainScrn/Display_Cont/HBoxContainer".visible = true
			$"/root/Start/MainScrn/Display_Cont/VBoxContainer/vLabel_C".visible = true
			$"/root/Start/MainScrn/Display_Cont/VBoxContainer/vLabel_D".visible = true
			$"/root/Start/MainScrn/Display_Cont/VBoxContainer/vLabel_E".visible = true
			$"/root/Start/MainScrn/Display_Cont/HBoxContainer/hLabel_E".visible = true
			$"/root/Start/MainScrn/Display_Cont/HBoxContainer/hLabel_D".visible = true
			$"/root/Start/MainScrn/Display_Cont/HBoxContainer/hLabel_C".visible = true
			$"/root/Start/MainScrn/Display_Cont/HBoxContainer/hLabel_B".visible = true
			$"/root/Start/MainScrn/Display_Cont/HBoxContainer/hLabel_A".visible = true
			# HIDDEN
			$"/root/Start/MainScrn/Display_Cont/T_VLine".visible = false
			$"/root/Start/MainScrn/Display_Cont/T_HLine".visible = false
			$"/root/Start/MainScrn/Display_Cont/T_VBoxContainer".visible = false
			$"/root/Start/MainScrn/Display_Cont/T_HBoxContainer".visible = false
			$"/root/Start/MainScrn/Display_Cont/VBoxContainer/vLabel_A".visible = false
			$"/root/Start/MainScrn/Display_Cont/VBoxContainer/vLabel_B".visible = false
			$"/root/Start/MainScrn/Display_Cont/T_VBoxContainer/T_vLabel_A".visible = false
			$"/root/Start/MainScrn/Display_Cont/T_VBoxContainer/T_vLabel_B".visible = false
			$"/root/Start/MainScrn/Display_Cont/T_VBoxContainer/T_vLabel_C".visible = false
			$"/root/Start/MainScrn/Display_Cont/T_HBoxContainer/T_hLabel_C".visible = false
			$"/root/Start/MainScrn/Display_Cont/T_HBoxContainer/T_hLabel_B".visible = false
			$"/root/Start/MainScrn/Display_Cont/T_HBoxContainer/T_hLabel_A".visible = false
			$"/root/Start/MainScrn/Display_Cont/TooLarge".visible = false
		## Tele
		3:
			# VISIBLE
			$"/root/Start/MainScrn/Display_Cont/VLine".visible = true
			$"/root/Start/MainScrn/Display_Cont/HLine".visible = true
			$"/root/Start/MainScrn/Display_Cont/T_VLine".visible = true
			$"/root/Start/MainScrn/Display_Cont/T_HLine".visible = true
			$"/root/Start/MainScrn/Display_Cont/VBoxContainer".visible = true
			$"/root/Start/MainScrn/Display_Cont/HBoxContainer".visible = true
			$"/root/Start/MainScrn/Display_Cont/T_VBoxContainer".visible = true
			$"/root/Start/MainScrn/Display_Cont/T_HBoxContainer".visible = true
			$"/root/Start/MainScrn/Display_Cont/VBoxContainer/vLabel_C".visible = true
			$"/root/Start/MainScrn/Display_Cont/VBoxContainer/vLabel_D".visible = true
			$"/root/Start/MainScrn/Display_Cont/VBoxContainer/vLabel_E".visible = true
			$"/root/Start/MainScrn/Display_Cont/HBoxContainer/hLabel_E".visible = true
			$"/root/Start/MainScrn/Display_Cont/HBoxContainer/hLabel_D".visible = true
			$"/root/Start/MainScrn/Display_Cont/HBoxContainer/hLabel_C".visible = true
			$"/root/Start/MainScrn/Display_Cont/T_VBoxContainer/T_vLabel_A".visible = true
			$"/root/Start/MainScrn/Display_Cont/T_VBoxContainer/T_vLabel_B".visible = true
			$"/root/Start/MainScrn/Display_Cont/T_VBoxContainer/T_vLabel_C".visible = true
			$"/root/Start/MainScrn/Display_Cont/T_HBoxContainer/T_hLabel_C".visible = true
			$"/root/Start/MainScrn/Display_Cont/T_HBoxContainer/T_hLabel_B".visible = true
			$"/root/Start/MainScrn/Display_Cont/T_HBoxContainer/T_hLabel_A".visible = true
			# HIDDEN
			$"/root/Start/MainScrn/Display_Cont/VBoxContainer/vLabel_A".visible = false
			$"/root/Start/MainScrn/Display_Cont/VBoxContainer/vLabel_B".visible = false
			$"/root/Start/MainScrn/Display_Cont/HBoxContainer/hLabel_B".visible = false
			$"/root/Start/MainScrn/Display_Cont/HBoxContainer/hLabel_A".visible = false
			$"/root/Start/MainScrn/Display_Cont/TooLarge".visible = false
		## Too large
		4:
			$"/root/Start/MainScrn/Display_Cont/VLine".visible = false
			$"/root/Start/MainScrn/Display_Cont/HLine".visible = false
			$"/root/Start/MainScrn/Display_Cont/T_VLine".visible = false
			$"/root/Start/MainScrn/Display_Cont/T_HLine".visible = false
			$"/root/Start/MainScrn/Display_Cont/VBoxContainer".visible = false
			$"/root/Start/MainScrn/Display_Cont/HBoxContainer".visible = false
			$"/root/Start/MainScrn/Display_Cont/T_VBoxContainer".visible = false
			$"/root/Start/MainScrn/Display_Cont/T_HBoxContainer".visible = false
			$"/root/Start/MainScrn/Display_Cont/TooLarge".visible = true
		## Pass
		_:
			pass

# Screen display switcher
func ViewSwitch(x):
	match x:
		## MainScrn
		1:
			$"/root/Start/MainScrn".visible = true
			$"/root/Start/OptScrn".visible = false
			$"/root/Start/LicScrn".visible = false
			$"/root/Start/HelpScrn".visible = false
			$"/root/Start/HowScrn".visible = false
		
		## OptScrn
		2:
			$"/root/Start/MainScrn".visible = false
			$"/root/Start/OptScrn".visible = true
			$"/root/Start/LicScrn".visible = false
			$"/root/Start/HelpScrn".visible = false
			$"/root/Start/HowScrn".visible = false
		
		## LicScrn
		3:
			$"/root/Start/MainScrn".visible = false
			$"/root/Start/OptScrn".visible = false
			$"/root/Start/LicScrn".visible = true
			$"/root/Start/HelpScrn".visible = false
			$"/root/Start/HowScrn".visible = false
		
		## HelpScrn
		4:
			$"/root/Start/MainScrn".visible = false
			$"/root/Start/OptScrn".visible = false
			$"/root/Start/LicScrn".visible = false
			$"/root/Start/HelpScrn".visible = true
			$"/root/Start/HowScrn".visible = false
		
		## HowScrn
		5:
			$"/root/Start/MainScrn".visible = false
			$"/root/Start/OptScrn".visible = false
			$"/root/Start/LicScrn".visible = false
			$"/root/Start/HelpScrn".visible = false
			$"/root/Start/HowScrn".visible = true
		
		## ERROR PASS
		_:
			pass
			
# How To pages visibility
func HBox(x):
	match x:
		1:
			$"/root/Start/HowScrn/StepDisp/S1".visible = true
			$"/root/Start/HowScrn/StepDisp/S2".visible = false
			$"/root/Start/HowScrn/StepDisp/S3".visible = false
			$"/root/Start/HowScrn/StepDisp/S4".visible = false
			$"/root/Start/HowScrn/StepDisp/S5".visible = false
			$"/root/Start/HowScrn/StepDisp/S6".visible = false
			
			$"/root/Start/HowScrn/SCont/S1".visible = true
			$"/root/Start/HowScrn/SCont/S2".visible = false
			$"/root/Start/HowScrn/SCont/S3".visible = false
			$"/root/Start/HowScrn/SCont/S4".visible = false
			$"/root/Start/HowScrn/SCont/S5".visible = false
			$"/root/Start/HowScrn/SCont/S6".visible = false
			
			$"/root/Start/HowScrn/Btn_Prev".visible = false
			$"/root/Start/HowScrn/Btn_Next".visible = true
		2:
			$"/root/Start/HowScrn/StepDisp/S1".visible = false
			$"/root/Start/HowScrn/StepDisp/S2".visible = true
			$"/root/Start/HowScrn/StepDisp/S3".visible = false
			$"/root/Start/HowScrn/StepDisp/S4".visible = false
			$"/root/Start/HowScrn/StepDisp/S5".visible = false
			$"/root/Start/HowScrn/StepDisp/S6".visible = false
			
			$"/root/Start/HowScrn/SCont/S1".visible = false
			$"/root/Start/HowScrn/SCont/S2".visible = true
			$"/root/Start/HowScrn/SCont/S3".visible = false
			$"/root/Start/HowScrn/SCont/S4".visible = false
			$"/root/Start/HowScrn/SCont/S5".visible = false
			$"/root/Start/HowScrn/SCont/S6".visible = false
			
			$"/root/Start/HowScrn/Btn_Prev".visible = true
			$"/root/Start/HowScrn/Btn_Next".visible = true
		3:
			$"/root/Start/HowScrn/StepDisp/S1".visible = false
			$"/root/Start/HowScrn/StepDisp/S2".visible = false
			$"/root/Start/HowScrn/StepDisp/S3".visible = true
			$"/root/Start/HowScrn/StepDisp/S4".visible = false
			$"/root/Start/HowScrn/StepDisp/S5".visible = false
			$"/root/Start/HowScrn/StepDisp/S6".visible = false
			
			$"/root/Start/HowScrn/SCont/S1".visible = false
			$"/root/Start/HowScrn/SCont/S2".visible = false
			$"/root/Start/HowScrn/SCont/S3".visible = true
			$"/root/Start/HowScrn/SCont/S4".visible = false
			$"/root/Start/HowScrn/SCont/S5".visible = false
			$"/root/Start/HowScrn/SCont/S6".visible = false
			
			$"/root/Start/HowScrn/Btn_Prev".visible = true
			$"/root/Start/HowScrn/Btn_Next".visible = true
		4:
			$"/root/Start/HowScrn/StepDisp/S1".visible = false
			$"/root/Start/HowScrn/StepDisp/S2".visible = false
			$"/root/Start/HowScrn/StepDisp/S3".visible = false
			$"/root/Start/HowScrn/StepDisp/S4".visible = true
			$"/root/Start/HowScrn/StepDisp/S5".visible = false
			$"/root/Start/HowScrn/StepDisp/S6".visible = false
			
			$"/root/Start/HowScrn/SCont/S1".visible = false
			$"/root/Start/HowScrn/SCont/S2".visible = false
			$"/root/Start/HowScrn/SCont/S3".visible = false
			$"/root/Start/HowScrn/SCont/S4".visible = true
			$"/root/Start/HowScrn/SCont/S5".visible = false
			$"/root/Start/HowScrn/SCont/S6".visible = false
			
			$"/root/Start/HowScrn/Btn_Prev".visible = true
			$"/root/Start/HowScrn/Btn_Next".visible = true
		5:
			$"/root/Start/HowScrn/StepDisp/S1".visible = false
			$"/root/Start/HowScrn/StepDisp/S2".visible = false
			$"/root/Start/HowScrn/StepDisp/S3".visible = false
			$"/root/Start/HowScrn/StepDisp/S4".visible = false
			$"/root/Start/HowScrn/StepDisp/S5".visible = true
			$"/root/Start/HowScrn/StepDisp/S6".visible = false
			
			$"/root/Start/HowScrn/SCont/S1".visible = false
			$"/root/Start/HowScrn/SCont/S2".visible = false
			$"/root/Start/HowScrn/SCont/S3".visible = false
			$"/root/Start/HowScrn/SCont/S4".visible = false
			$"/root/Start/HowScrn/SCont/S5".visible = true
			$"/root/Start/HowScrn/SCont/S6".visible = false
			
			$"/root/Start/HowScrn/Btn_Prev".visible = true
			$"/root/Start/HowScrn/Btn_Next".visible = true
		6:
			$"/root/Start/HowScrn/StepDisp/S1".visible = false
			$"/root/Start/HowScrn/StepDisp/S2".visible = false
			$"/root/Start/HowScrn/StepDisp/S3".visible = false
			$"/root/Start/HowScrn/StepDisp/S4".visible = false
			$"/root/Start/HowScrn/StepDisp/S5".visible = false
			$"/root/Start/HowScrn/StepDisp/S6".visible = true
			
			$"/root/Start/HowScrn/SCont/S1".visible = false
			$"/root/Start/HowScrn/SCont/S2".visible = false
			$"/root/Start/HowScrn/SCont/S3".visible = false
			$"/root/Start/HowScrn/SCont/S4".visible = false
			$"/root/Start/HowScrn/SCont/S5".visible = false
			$"/root/Start/HowScrn/SCont/S6".visible = true
			
			$"/root/Start/HowScrn/Btn_Prev".visible = true
			$"/root/Start/HowScrn/Btn_Next".visible = false
