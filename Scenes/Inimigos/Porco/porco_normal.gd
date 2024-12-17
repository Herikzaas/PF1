extends CharacterBody2D


var SPEED = 50
const JUMP_VELOCITY = -400.0
var direction = -1

@onready var animacao = $anim as AnimatedSprite2D
func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	
	if $CorrePlayer.is_colliding():
		SPEED = 150
		animacao.play("run")
	if $TrocaDirecao.is_colliding():
		direction *= -1
		self.scale.x *= -1
	move_and_slide()
