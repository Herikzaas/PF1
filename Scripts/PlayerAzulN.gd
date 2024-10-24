extends CharacterBody2D


const SPEED = 140.0
const JUMP_VELOCITY = -390.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
var em_escada = false
var morto = false

@onready var anim = $AnimAzul as AnimatedSprite2D

func _physics_process(delta):
	var direction = Input.get_axis("EsquerdaAzul", "DireitaAzul")
	
	if not is_on_floor():
		velocity.y += gravity * delta
	
	if em_escada :
		if Input.is_action_pressed("Subir_Escada"):
			velocity.y = -SPEED
			animation(direction)
		elif Input.is_action_just_pressed("Descer_Escada"):
			velocity.y = SPEED
			animation(direction)
	# Handle jump.
	if Input.is_action_just_pressed("PuloAzul") and is_on_floor():
		velocity.y = JUMP_VELOCITY
		animation(direction)
		
	if direction!=0:
		velocity.x = direction * SPEED
		animation(direction)
		anim.scale.x = direction
	else :
		velocity.x = move_toward(velocity.x, 0, SPEED)
		animation(direction)
	
	if morto :
		velocity.x = 0
		anim.play('dead')

		
	move_and_slide()

func animation(direction):
	if em_escada :
		if Input.is_action_pressed("Subir_Escada"):
			anim.play('escada')
		if Input.is_action_just_pressed("Descer_Escada"):
			anim.play('escada')
	
	if direction == 0 and not em_escada and not morto:
		anim.play('idle')
	
	if direction != 0 and not morto and not em_escada:
		anim.play('run')
		
		
func _on_anim_azul_animation_finished() -> void:
	if anim.animation == 'dead' :
		queue_free()