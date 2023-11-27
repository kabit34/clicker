extends Node2D


func _ready():
	$Labelamount.text = "+" + str(Global.iteamlesperclick)

func _physics_process(delta):
	position.y -= 4

