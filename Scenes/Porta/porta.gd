extends Area2D
var aberta = false
@onready var anim = $AnimatedSprite2D as AnimatedSprite2D
var fase2 = preload("res://Scenes/Fases/Fase2/Fase2.tscn")
var fase3 = preload("res://Scenes/Fases/Fase3/fase_3.tscn")

func _ready() -> void:
	aberta = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if $"/root/Global".acertos == $"/root/Global".num_questoes :
		if aberta == false :
			anim.play("open")
			$Audio.play()
			aberta = true
	$cont.text =  str($"/root/Global".acertos) + "/" + str($"/root/Global".num_questoes)

func _on_body_entered(body: Node2D) -> void:
	if aberta == true and body.is_in_group('players') :
		if self.name == "PortaF1" :
			$"/root/TransitionScreen".transition()
			await $"/root/TransitionScreen".on_transition_finished
			get_tree().change_scene_to_packed(fase2)
		if self.name == "PortaF2" :
			get_tree().change_scene_to_packed(fase3)
