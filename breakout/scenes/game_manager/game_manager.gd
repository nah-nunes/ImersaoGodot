extends Node2D
@export_group("Controle dos Blocos")
@export var blocos : Node2D 
var blocos_na_fase : int = 0

@export_group("Controle da fase")
@export var proxima_fase :String
@onready var timer_do_passar_de_fase : Timer = $Timer

func _ready():
	buscar_blocos()




func _process(delta):
	pass



func buscar_blocos() -> void:
	# conta quantos blocos há na fase
	for bloco in blocos.get_children():
		blocos_na_fase +=1


func atualizar_contagem_dos_blocos() -> void:
	# remove um bloco da contage e se não tiver mais nenhum inicia o passar de fase
	blocos_na_fase -= 1
	if blocos_na_fase <= 0:
		timer_do_passar_de_fase.start()
	


func _on_timer_timeout():
	# carrega a próxima fase
	get_tree().change_scene_to_file(proxima_fase)
