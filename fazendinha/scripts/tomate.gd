extends Area2D


var semente = 1

# Called when the node enters the scene tree for the first time.
func _ready():
	hide()
	$AnimatedSprite2D.stop()
	#$$SementeAnimatedSprite2D.stop()



	
	
func _process(delta):
	$"../Dados/semente_tomate".text = "Sementes de tomate: " + str(semente)




func _on_body_entered(body: Node2D) -> void: 
	
	if semente == 1:
		show()
		semente -=1
		$AnimatedSprite2D.frame =0
		await get_tree().create_timer(3.0).timeout
		$AnimatedSprite2D.frame = 1
		await get_tree().create_timer(5.0).timeout
		$AnimatedSprite2D.frame = 2
		await get_tree().create_timer(7.0).timeout
		$AnimatedSprite2D.frame = 3
		await get_tree().create_timer(10.0).timeout
		$AnimatedSprite2D.frame = 4
	
