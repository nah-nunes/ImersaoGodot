extends StaticBody2D
@export var vida_do_bloco : int 
@export var vermelho : Color 
@export var verde : Color
@export var azul : Color


func _ready():
	atualizar_cor()


func atualizar_cor() -> void:
	if vida_do_bloco == 3:
		modulate = verde
	elif  vida_do_bloco == 2: 
		modulate = azul
	elif vida_do_bloco == 1:
		modulate = vermelho
	else:
		modulate = Color.WHITE


func receber_dano() -> void:
	vida_do_bloco -= 1
	
	if vida_do_bloco >= 1:
		atualizar_cor()
	else:
		queue_free()
