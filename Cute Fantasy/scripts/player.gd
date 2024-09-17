extends CharacterBody2D
# referencias para o nó AnimatedSprite2D 
@onready var animated_sprite : AnimatedSprite2D =$AnimatedSprite2D





var velocidade:float = 40.0
var direcao:Vector2 = Vector2(0,0)


func _ready():
	pass



func _process(delta):
	
	movimenta_personagem()
	

func movimenta_personagem():
	# reseta o vetor de movimento
	direcao = Vector2.ZERO
	
	# movimentação horizontal 
	
	if Input.is_action_pressed("left"):
		direcao.x = -1
		animated_sprite.play("left_walk")
		
	if Input.is_action_pressed("right"):
		direcao.x = 1
		animated_sprite.play("right_walk")
	
	
	# movimentação vertical 
	if Input.is_action_pressed("up"):
		direcao.y = -1
		animated_sprite.play("up_walk")
	if Input.is_action_pressed("down"):
		direcao.y = 1
		animated_sprite.play("down_walk")
		
	
	# Se estiver parado 
	if direcao == Vector2.ZERO:
		animated_sprite.play("idle")
			
	
	# Define a velocidade do movimento com base na direção 
	velocity = direcao.normalized() * velocidade
	
	# aplicar o movimento apenas uma vez
	move_and_slide()
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
