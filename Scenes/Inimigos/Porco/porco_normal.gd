extends CharacterBody2D


var SPEED = 100
const JUMP_VELOCITY = -400.0
var direction = -1
@onready var animacao = $anim as AnimatedSprite2D

func _ready() -> void:
	pass

func _physics_process(delta: float) -> void:
	velocity.x = direction * SPEED
	if not is_on_floor():
		velocity += get_gravity() * delta

	if $CorrePlayer.is_colliding():
		SPEED = 50
	
	if $TrocaDirecao.is_colliding():
		direction *= -1
		self.scale.x *= -1
