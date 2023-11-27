extends Node

var savepath = "res://save-file.cfg"
var config = ConfigFile.new()
var loadresponse = config.load(savepath)

func savevalue(section, key, value):
	config.set_value(section, key, value)
	config.save(savepath)

func loadvalue(section, key, default):
	return config.get_value(section, key, default)
