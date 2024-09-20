extends CharacterBody2D

var velocity_farmer : float = 40.0
var direction_movement : Vector2 =Vector2(0,0)

# referencia do nó de animação 
@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D

func _ready() -> void:
	pass


func _process(delta: float) -> void:
	moves_farmer()
	
	
func moves_farmer() -> void:
	#resetar o vetor de movimento 
	direction_movement = Vector2.ZERO
	
	
	#movimentação vertical 
	if Input.is_action_pressed("up"):
		direction_movement.y -= 1
		animated_sprite.play("up_walk")
	elif Input.is_action_pressed("down"):
		direction_movement.y +=1
		animated_sprite.play("down_walk")
	
	# movimentação horizontal 
	if Input.is_action_pressed("left"):
		direction_movement.x -= 1
		animated_sprite.play("left_walk")
	elif Input.is_action_pressed("right"):
		direction_movement.x +=1
		animated_sprite.play("right_walk")
	
	if direction_movement != Vector2.ZERO:
		direction_movement = direction_movement.normalized()
		
	if direction_movement == Vector2.ZERO:
		animated_sprite.play("idle")
		
	velocity = direction_movement * velocity_farmer
	move_and_slide()
		
	
 
