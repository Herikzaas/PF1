extends Node2D

var fase = preload("res://Scenes/Fases/Fase1/Fase1.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$"/root/Global".musica_fase = preload("res://sounds/musica_titulo.mp3")
	$"/root/AudioPlayer".play_music_level()
	$"/root/Global".fase_pre = preload("res://Scenes/Fases/Fase1/Fase1.tscn")
	
	$Sprite2D.texture = preload("res://assets/Cutscenes/1_cena_parte1.png")
	await get_tree().create_timer(18).timeout
	$"/root/TransitionScreen".transition()
	await $"/root/TransitionScreen".on_transition_finished
	$Sprite2D.texture = preload("res://assets/Cutscenes/1_cena_parte2.png")
	await get_tree().create_timer(18).timeout
	$"/root/TransitionScreen".transition()
	await $"/root/TransitionScreen".on_transition_finished
	$Sprite2D.texture = preload("res://assets/Cutscenes/2_cena.png")
	await get_tree().create_timer(18).timeout
	$"/root/TransitionScreen".transition()
	await $"/root/TransitionScreen".on_transition_finished
	$Sprite2D.texture = preload("res://assets/Cutscenes/3_cena.png")
	await get_tree().create_timer(20).timeout
	$"/root/TransitionScreen".transition()
	await $"/root/TransitionScreen".on_transition_finished
	$Sprite2D.texture = preload("res://assets/Cutscenes/4_cena.png")
	await get_tree().create_timer(20).timeout
	$"/root/TransitionScreen".transition()
	await $"/root/TransitionScreen".on_transition_finished
	get_tree().change_scene_to_packed(preload("res://Scenes/Fases/Fase1/Fase1.tscn"))
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("PularCutscene"):
		$"/root/TransitionScreen".transition()
		await $"/root/TransitionScreen".on_transition_finished
		get_tree().change_scene_to_packed($"/root/Global".fase_pre)
