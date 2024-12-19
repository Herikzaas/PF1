extends Area2D


var aberta = false
var nbody = 0
@onready var anim = $AnimatedSprite2D as AnimatedSprite2D

func _ready() -> void:
	aberta = false
	nbody = 0

func _process(delta: float) -> void:
	if $"/root/Global".acertos == $"/root/Global".num_questoes :
		if aberta == false :
			anim.play("open")
			$Audio.play()
			aberta = true
	$cont.text =  str($"/root/Global".acertos) + "/" + str($"/root/Global".num_questoes)

func _on_body_entered(body: Node2D) -> void:
	if aberta == true and body.is_in_group('players'):
		nbody += 1
		if self.name == "PortaF10" :
			if nbody >= 3 :
				$"/root/TransitionScreen".transition()
				await $"/root/TransitionScreen".on_transition_finished
				get_tree().change_scene_to_packed($"/root/Global".fase_pre)
		else :
			if nbody >= 2 :
				$"/root/TransitionScreen".transition()
				await $"/root/TransitionScreen".on_transition_finished
				get_tree().change_scene_to_packed($"/root/Global".fase_pre)
