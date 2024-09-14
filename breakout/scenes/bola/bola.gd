extends Area2D

# referencias gerais
@onready var timer_da_bola : Timer = $Timer
@onready var som_impacto_bola : AudioStreamPlayer = $SomImpactoBloco
@onready var som_impacto_paddle: AudioStreamPlayer =$SomImpactoPaddle
@onready var som_impacto_tela : AudioStreamPlayer = $SomImpactoTela







var velocidade_da_bola: float = 400.0
var posicao_inicial : Vector2 =Vector2(400, 500)
var direcao_inicial : Vector2 = Vector2(0,0)
var nova_direcao : Vector2 = Vector2(0,0)

var primeiro_lancamento : bool = true
var caiu_da_tela : bool = false



# Limites da bola
var x_minimo : float = 0
var x_maximo : float = 800
var y_minimo : float = 0
var y_maximo: float = 600


func _ready():
	timer_da_bola.one_shot = true
	resetar_bola()

	



func _process(delta):
	if primeiro_lancamento == true:
		if Input.is_action_just_pressed("lancar-bola"):
			escolher_posicao_inicial()
			primeiro_lancamento = false	
			
	movimentar_bola(delta)
	verificar_posicao_da_bola()



func resetar_bola() -> void:
	position = posicao_inicial
	

func escolher_posicao_inicial() -> void:
	#escolhe uma nova direção horizontal
	var x_aleatorio = [1, -1].pick_random()
	#aplica a nova direção
	direcao_inicial = Vector2(x_aleatorio, -1)
	nova_direcao = direcao_inicial
	


func movimentar_bola(delta : float) -> void:
	# movimenta a bola com base em sua nova direção
	position += nova_direcao * velocidade_da_bola * delta
	
# 	
func verificar_posicao_da_bola() -> void:
	# se a bola estiver dentro da tela
	if position.y <= y_maximo:
	
	# rebate a bola se colidir com as bordas da tela
		if position.y <= y_minimo:
			som_impacto_tela.play()

			
			nova_direcao.y *= -1
		if position.x <= x_minimo or position.x >= x_maximo:
			som_impacto_tela.play()
			nova_direcao.x *= -1
	# se a bola cair da tela
	if position.y > y_maximo and not caiu_da_tela:
		timer_da_bola.start()
		caiu_da_tela = true
	
	
		
func sair_da_tela() -> void:

	# zerar a velocidade da bola
	nova_direcao = Vector2(0,0)
	# resetar o lançamento
	primeiro_lancamento =true
	
	# trazer de volta pra tela
	resetar_bola()
		
	
# função que verifica 
func _on_body_entered(body):
	# se colidir com o paddle rebate
	if body.is_in_group("paddle"):
		som_impacto_paddle.play()
		nova_direcao.y *= -1
		
	# se colidir com o bloco tbm rebate
	
	elif body.is_in_group("blocos"):
		som_impacto_bola.play()
		body.receber_dano()
		nova_direcao.y *= -1
		
	



func _on_timer_timeout():
	sair_da_tela()
	caiu_da_tela = false
