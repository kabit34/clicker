extends Node2D

func _ready():
	$Control/Labeliteam.text = str(Global.iteam)
	$Control/Labeliteampersecound.text = str(Global.iteampersecond) + " /s"
	$Control/Menushop/Box/TextureButton/Labellvl.text = str(Global.shop1)
	$Control/Menushop/Box/TextureButton/Labelprice.text = str(Global.shop1+1*10)
	$Control/Menushop/Box/TextureButton2/Labellvl.text = str(Global.shop2)
	$Control/Menushop/Box/TextureButton2/Labelprice.text = str(Global.shop2+1*10)

func _physics_process(delta):
	$Control/Labeliteam.text = str(Global.iteam)
	$Control/Labeliteampersecound.text = str(Global.iteampersecond) + " /s"

func _on_clicker_buton_pressed():
	Global.iteam += Global.iteamlesperclick
	Save.savevalue("main", "iteam", Global.iteam)

func _on_timer_timeout():
	Global.iteam += Global.iteampersecond
	$Control/Labeliteam.text = str(Global.iteam)

func _on_shop_pressed():
	$Control/Menushop.show()

func _on_cancel_pressed():
	$Control/Menushop.hide()

func _on_texture_button_pressed():
	if Global.iteam >= Global.shop1+1*10:
		Global.shop1 += 1
		Global.iteampersecond += 1
		Global.iteam -= Global.shop1+1*10
		Save.savevalue("main", "iteampersecond", Global.iteampersecond)
		Save.savevalue("shops", "shop1", Global.shop1)
		$Control/Menushop/Box/TextureButton/Labellvl.text = str(Global.shop1)
		$Control/Menushop/Box/TextureButton/Labelprice.text = str(Global.shop1+1*10)
	else:
		print("не достаточно очков для покупки")

func _on_texture_button_2_pressed():
	if Global.iteam >= Global.shop2+1*50:
		Global.shop2 += 1
		Global.iteampersecond += 3
		Global.iteam -= Global.shop2+1*50
		Save.savevalue("main", "iteampersecond", Global.iteampersecond)
		Save.savevalue("shops", "shop2", Global.shop2)
		$Control/Menushop/Box/TextureButton2/Labellvl.text = str(Global.shop2)
		$Control/Menushop/Box/TextureButton2/Labelprice.text = str(Global.shop2+1*50)
	else:
		print("не достаточно очков для покупки")
