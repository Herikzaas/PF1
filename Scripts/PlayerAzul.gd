extends CharacterBody2D


const SPEED = 140.0
const JUMP_VELOCITY = -390.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
var em_escada = false

@onready var anim = $AnimAzul as AnimatedSprite2D

func _physics_process(delta):
	var direction = Input.get_axis("EsquerdaAzul", "DireitaAzul")
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta
	
	if em_escada : 
		if Input.is_action_pressed("Subir_Escada"):
			velocity.y = -SPEED
			anim.play('escada')
		if Input.is_action_just_pressed("Descer_Escada"):
			velocity.y = SPEED
			anim.play('escada')
	
	
	# Handle jump.
	if Input.is_action_just_pressed("PuloAzul") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	
	if direction != 0 :
		velocity.x = direction * SPEED
		anim.play('run')
		anim.scale.x = direction
		
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		
	
	if direction == 0 and not em_escada:
		anim.play('idle')
	move_and_slide()
