extends Area2D

var plantar = false
var possoPlantar = false
var plantado = false

# Called when the node enters the scene tree for the first time.
func _ready():
	hide()
	$AnimatedSprite2D.stop()
	#$$SementeAnimatedSprite2D.stop()



	
	
func _process(_delta):
	if Input.is_action_just_pressed("space"):
		plantar = true
	$"../Dados/semente_tomate".text = "Sementes de tomate: " + str(Dados.qtd_semente)
	if possoPlantar == true and plantado== false:
		if Dados.qtd_semente >= 1 and  plantar == true: #Input.is_action_just_pressed("space") :
			show()
			plantado = true
			Dados.qtd_semente -=1
			$AnimatedSprite2D.frame =0
			await get_tree().create_timer(3.0).timeout
			plantar = false
			$AnimatedSprite2D.frame = 1
			await get_tree().create_timer(5.0).timeout
			$AnimatedSprite2D.frame = 2
			await get_tree().create_timer(7.0).timeout
			$AnimatedSprite2D.frame = 3
			await get_tree().create_timer(10.0).timeout
			$AnimatedSprite2D.frame = 4
			await get_tree().create_timer(4.0).timeout
			$AnimatedSprite2D.frame = 5
			plantado = false




func _on_body_entered(_body: Node2D) -> void: 
	possoPlantar = true
	await get_tree().create_timer(3.0).timeout
	$"../borboleta/AnimationPlayer".play("voo")

	
	


func _on_body_exited(body):
	possoPlantar = false

