extends StaticBody2D

var velocidade_do_paddle : float = 700.0
var x_minimo : float =47
var x_maximo: float =753

func _ready():
	pass




func _process(delta):
	movimentar_paddle(delta) 
	limitar_movimento()
	
	
	
func movimentar_paddle(delta :float) -> void:
	if Input.is_action_pressed("mv_esquerdo"): 
		position.x -= velocidade_do_paddle * delta
	elif Input.is_action_pressed("mv_direito"):
		position.x += velocidade_do_paddle * delta
		
		
	
func limitar_movimento() -> void:
	#position.x = clamp(position, min, max)
	position.x = clamp(position.x, x_minimo, x_maximo)
