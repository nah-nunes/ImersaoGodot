extends CharacterBody2D

var velocidade_fazendeira : float = 50.0
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
		direcao_movimento.x += 1
	elif Input.is_action_pressed("left"):
		direcao_movimento.x -= 1

	# Movimentação vertical
	if Input.is_action_pressed("up"):
		direcao_movimento.y -= 1
	elif Input.is_action_pressed("down"):
		direcao_movimento.y += 1

	# Normaliza o movimento para manter a velocidade consistente
	if direcao_movimento != Vector2.ZERO:
		direcao_movimento = direcao_movimento.normalized()

	# Definir a velocidade do movimento com base na direção
	velocity = direcao_movimento * velocidade_fazendeira

	# Aplicar o movimento
	move_and_slide()

	# Atualizar animação com base na direção de movimento
	atualiza_animacao()

func atualiza_animacao() -> void:
	# Se houver movimento horizontal
	if direcao_movimento.x > 0:
		animated_sprite.play("walk-right")
	elif direcao_movimento.x < 0:
		animated_sprite.play("walk-left")
	# Se houver movimento vertical
	elif direcao_movimento.y > 0:
		animated_sprite.play("walk-down")
	elif direcao_movimento.y < 0:
		animated_sprite.play("walk-up")
	# Se não houver movimento
	else:
		animated_sprite.play("idle")

func _on_balde_sementes_body_entered(_body) -> void:
	Dados.qtd_semente +=1


func _on_porta_casa_body_entered(body):
	get_tree().change_scene_to_file.bind("res://scenes/house.tscn").call_deferred()


func _on_sair_body_entered(body):
	get_tree().change_scene_to_file.bind("res://scenes/principal.tscn").call_deferred()

