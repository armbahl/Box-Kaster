###############################################################################
### License screen handling
###############################################################################

extends Control

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass

## License Button: Box Kaster
func _on_lic_b_box_kaster_pressed():
	$"/root/Start/LicScrn/Txt_Cont/Lic_BoxKaster".visible = true
	$"/root/Start/LicScrn/Txt_Cont/Lic_Godot".visible = false
	$"/root/Start/LicScrn/Txt_Cont/Lic_FreeType".visible = false
	$"/root/Start/LicScrn/Txt_Cont/Lic_ENet".visible = false
	$"/root/Start/LicScrn/Txt_Cont/Lic_mbed".visible = false
	$"/root/Start/LicScrn/Txt_Cont/Lic_Arcon".visible = false
	
## License Button: Godot
func _on_lic_b_godot_pressed():
	$"/root/Start/LicScrn/Txt_Cont/Lic_BoxKaster".visible = false
	$"/root/Start/LicScrn/Txt_Cont/Lic_Godot".visible = true
	$"/root/Start/LicScrn/Txt_Cont/Lic_FreeType".visible = false
	$"/root/Start/LicScrn/Txt_Cont/Lic_ENet".visible = false
	$"/root/Start/LicScrn/Txt_Cont/Lic_mbed".visible = false
	$"/root/Start/LicScrn/Txt_Cont/Lic_Arcon".visible = false

## License Button: FreeType
func _on_lic_b_free_type_pressed():
	$"/root/Start/LicScrn/Txt_Cont/Lic_BoxKaster".visible = false
	$"/root/Start/LicScrn/Txt_Cont/Lic_Godot".visible = false
	$"/root/Start/LicScrn/Txt_Cont/Lic_FreeType".visible = true
	$"/root/Start/LicScrn/Txt_Cont/Lic_ENet".visible = false
	$"/root/Start/LicScrn/Txt_Cont/Lic_mbed".visible = false
	$"/root/Start/LicScrn/Txt_Cont/Lic_Arcon".visible = false

## License Button: ENet
func _on_lic_b_e_net_pressed():
	$"/root/Start/LicScrn/Txt_Cont/Lic_BoxKaster".visible = false
	$"/root/Start/LicScrn/Txt_Cont/Lic_Godot".visible = false
	$"/root/Start/LicScrn/Txt_Cont/Lic_FreeType".visible = false
	$"/root/Start/LicScrn/Txt_Cont/Lic_ENet".visible = true
	$"/root/Start/LicScrn/Txt_Cont/Lic_mbed".visible = false
	$"/root/Start/LicScrn/Txt_Cont/Lic_Arcon".visible = false

## License Button: mbed TLS
func _on_lic_b_mbed_pressed():
	$"/root/Start/LicScrn/Txt_Cont/Lic_BoxKaster".visible = false
	$"/root/Start/LicScrn/Txt_Cont/Lic_Godot".visible = false
	$"/root/Start/LicScrn/Txt_Cont/Lic_FreeType".visible = false
	$"/root/Start/LicScrn/Txt_Cont/Lic_ENet".visible = false
	$"/root/Start/LicScrn/Txt_Cont/Lic_mbed".visible = true
	$"/root/Start/LicScrn/Txt_Cont/Lic_Arcon".visible = false

## Back Button
func _on_lic_back_pressed():
	$"/root/Start/LicScrn".visible = false
	$"/root/Start/OptScrn".visible = false
	$"/root/Start/MainScrn".visible = true
	$"/root/Start/LicScrn/Txt_Cont/Lic_BoxKaster".visible = true
	$"/root/Start/LicScrn/Txt_Cont/Lic_Godot".visible = false
	$"/root/Start/LicScrn/Txt_Cont/Lic_FreeType".visible = false
	$"/root/Start/LicScrn/Txt_Cont/Lic_ENet".visible = false
	$"/root/Start/LicScrn/Txt_Cont/Lic_mbed".visible = false
	$"/root/Start/LicScrn/Txt_Cont/Lic_Arcon".visible = false


func _on_lic_b_arcon_pressed():
	$"/root/Start/LicScrn/Txt_Cont/Lic_BoxKaster".visible = false
	$"/root/Start/LicScrn/Txt_Cont/Lic_Godot".visible = false
	$"/root/Start/LicScrn/Txt_Cont/Lic_FreeType".visible = false
	$"/root/Start/LicScrn/Txt_Cont/Lic_ENet".visible = false
	$"/root/Start/LicScrn/Txt_Cont/Lic_mbed".visible = false
	$"/root/Start/LicScrn/Txt_Cont/Lic_Arcon".visible = true
