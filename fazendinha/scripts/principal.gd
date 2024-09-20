extends Node2D

var cena = preload("res://scenes/birds.tscn")

func _ready():
	pass 



func _process(delta):
	var instance = cena.instantiate()
	#instance.position = get_global_mouse_position()
	#add_child(instance)




var tempo = Time.get_datetime_dict_from_system()
var hora = "%02d"%tempo.hour
var minutos = "%02d"%tempo.minute
var segundos = "%02d"%tempo.second
#text = str(hora, ":", minutos, ".", segundos)

