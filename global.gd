extends Node

var iteam = 0
var iteampersecond = 0
var iteamlesperclick = 1

var shop1 = 0
var shop2 = 0
func _ready():
	iteam = Save.loadvalue("main", "iteam", 0)
	iteampersecond = Save.loadvalue("main", "iteampersecond", 0)
	shop1 = Save.loadvalue("shops", "shop1", 0)
	shop2 = Save.loadvalue("shops", "shop2", 0)

