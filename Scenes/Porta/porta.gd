extends Area2D
var aberta = false
@onready var anim = $AnimatedSprite2D as AnimatedSprite2D
var next_scene = preload("res://Scenes/Fases/Fase2/Fase2.tscn")

func _ready() -> void:
	aberta = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if $"/root/Global".acertos >= $"/root/Global".num_questoes :
		if aberta == false :
			anim.play("open")
			aberta = true
	$cont.text =  str($"/root/Global".acertos) + "/" + str($"/root/Global".num_questoes)

func _on_body_entered(body: Node2D) -> void:
	if aberta == true and body.is_in_group('players') :
		#if Input.is_action_just_pressed("Prox_fase"):
			await get_tree().create_timer(2).timeout
			get_tree().change_scene_to_packed(next_scene)
