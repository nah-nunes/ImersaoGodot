extends Node2D

@export var blocos : Node2D 
var blocos_na_fase : int = 0
@export var proxima_fase :String
@onready var timer_do_passar_de_fase : Timer = $Timer

func _ready():
	buscar_blocos()




func _process(delta):
	pass



func buscar_blocos() -> void:
	for bloco in blocos.get_children():
		blocos_na_fase +=1


func atualizar_contagem_dos_blocos() -> void:
	blocos_na_fase -= 1
	if blocos_na_fase <= 0:
		timer_do_passar_de_fase.start()
	


func _on_timer_timeout():
	get_tree().change_scene_to_file(proxima_fase)
