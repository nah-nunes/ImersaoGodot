extends CharacterBody2D
# Variáveis -> nos permite armazenar um valor na memória do computador 
# tipos de variaveis
# int -> armazena um numero inteiro
# float -> armazena um numero com casas decimais
#String -> Armazena uma sequencia de caracteres
# bool -> Armazena o valor de verdadeiro ou falso


## Na linguagem GD Script existem duas maneiras de se declarar uma variável: 
# - deixando que o programa indentifique seu tipo;
	# var moedas_coletadas = 3
# - especificando o seu tipo;
	# var moedas_coletadas: int = 3;


#for loops 
# for numero in range(10):
	#print("Vamos programar!")
	
# Iterar por uma array 
# var nomes_dos_jogadores: Array = ["Mario", "Luigi", "Toad"]
#for nome in nomes_dos_jogadores:
	#print(nome)
	
var velocidade_do_jogador : float = 400.0
var direcao_do_movimento : Vector2 = Vector2(0,0)
func _ready():
	pass


func _process(delta):
	movimentar_jogador_horizontal()
	movimentar_jogador_vertical()
	limitar_posicao()
	pass
	
	
func movimentar_jogador_horizontal() -> void:
	if Input.is_action_pressed("mv_direito"):
		direcao_do_movimento.x = 1
	elif Input.is_action_pressed("mv_esquerdo"):
		direcao_do_movimento.x = -1
	else:
		direcao_do_movimento.x = 0
		
	velocity = direcao_do_movimento.normalized() * velocidade_do_jogador
	move_and_slide()
	
func movimentar_jogador_vertical() -> void:
	if Input.is_action_pressed("mv_cima"):
		direcao_do_movimento.y = -1
	elif Input.is_action_pressed("mv_baixo"):
		direcao_do_movimento.y =1
	else:
		direcao_do_movimento.y = 0
	
		# Aplica as mudanças na direção do jogador
	velocity = direcao_do_movimento.normalized() * velocidade_do_jogador
	move_and_slide()
	# normalized() -> normaliza o vetor na diagonal
	
	
func limitar_posicao() -> void:
		position.x = clamp(position.x, 20, 1200)
	
	
