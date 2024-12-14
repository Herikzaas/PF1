extends CharacterBody2D


var SPEED = 140
const JUMP_VELOCITY = -390.0
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
var em_escada = false
var morto = false

@onready var anim = $AnimRosa as AnimatedSprite2D

func _physics_process(delta):
	var direction = Input.get_axis("ui_left", "ui_right")
	
	if not is_on_floor():
		velocity.y += gravity * delta
	
	if em_escada :
		if Input.is_action_pressed("Subir_Escada"):
			velocity.y = -SPEED
			animation(direction)
		elif Input.is_action_just_pressed("Descer_Escada"):
			velocity.y = SPEED
			animation(direction)
	
	if Input.is_action_just_pressed("PuloRosa") and is_on_floor():
		velocity.y = JUMP_VELOCITY
		
	if direction!=0:
		velocity.x = direction * SPEED
		animation(direction)
		anim.scale.x = direction
	else :
		velocity.x = move_toward(velocity.x, 0, SPEED)
		animation(direction)
	
	if morto :
		velocity.x = 0
		animation(direction)

	move_and_slide()

func animation(direction):
	if em_escada :
		if Input.is_action_pressed("Subir_Escada"):
			anim.play('escada')
		if Input.is_action_just_pressed("Descer_Escada"):
			anim.play('escada')
	
	if direction == 0 and not em_escada and not morto:
		anim.play('idle')
	
	if direction != 0 and not morto and not em_escada and is_on_floor():
		anim.play('run')
		
	if morto :
		anim.play('dead')
	
func _on_anim_rosa_animation_finished() -> void:
	if anim.animation == 'dead' :
		queue_free()
