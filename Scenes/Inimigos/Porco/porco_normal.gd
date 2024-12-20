extends CharacterBody2D


var SPEED = 0
const JUMP_VELOCITY = -400.0
var direction = -1

@onready var animacao = $anim as AnimatedSprite2D

func _ready() -> void:
	if self.name == "PorcoNormalDireita" :
		direction = -1
	else :
		direction = 1
	if $"/root/Global".fase == 4 :
		global_position.x = 788
		global_position.y = 204
func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	
	if $CorrePlayer.is_colliding():
		SPEED = 175
		animacao.play("run")
	if $TrocaDirecao.is_colliding():
		direction *= -1
		self.scale.x *= -1
	move_and_slide()


func _on_colide_player_body_entered(body: Node2D) -> void:
	if body.is_in_group('players'):
		body.morto = true
