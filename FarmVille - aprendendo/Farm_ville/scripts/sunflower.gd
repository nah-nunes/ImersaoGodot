

extends Area2D

# Variáveis para controle de plantio
var plant = false
var can_plant = false
var planted = false


# Função _ready para inicialização
func _ready() -> void:
	hide()  
	$AnimatedSprite2D.stop()  


func _process(delta: float) -> void:
	check_if_plant()

# Função para verificar condições de plantio
func check_if_plant() -> void:
	if Input.is_action_just_pressed("plant"):
		plant = true 
		show() 
		$AnimatedSprite2D.play()
	
