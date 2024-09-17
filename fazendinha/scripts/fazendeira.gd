extends CharacterBody2D

var velocidade_fazendeira : float = 40.0
var direcao_movimento : Vector2 = Vector2(0,0)


# Referência para o nó AnimatedSprite2D
@onready var animated_sprite : AnimatedSprite2D = $AnimacaoFazendeira

func _ready() -> void:
	pass

func _process(_delta: float) -> void:
	movimenta_personagem()
	pass

func movimenta_personagem() -> void:
	# Resetar o vetor de movimento
	direcao_movimento = Vector2.ZERO

	# Movimentação horizontal
	if Input.is_action_pressed("right"):
		direcao_movimento.x = 1
		animated_sprite.play("walk-right")
	elif Input.is_action_pressed("left"):
		direcao_movimento.x = -1
		animated_sprite.play("walk-left")

	# Movimentação vertical
	if Input.is_action_pressed("up"):
		direcao_movimento.y = -1
	
	elif Input.is_action_pressed("down"):
		direcao_movimento.y = 1
	#$AnimacaoFazendeira.play("walk-right")
	# Se o personagem estiver parado (nenhuma tecla pressionada)
	if direcao_movimento == Vector2.ZERO:
		animated_sprite.play("idle")

	# Definir a velocidade do movimento com base na direção
	velocity = direcao_movimento.normalized() * velocidade_fazendeira

	# Aplicar o movimento apenas uma vez
	move_and_slide()



func _on_balde_sementes_body_entered(_body) -> void:
	Dados.qtd_semente +=1
