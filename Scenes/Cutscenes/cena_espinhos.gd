extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	await get_tree().create_timer(6).timeout
	$"/root/TransitionScreen".transition()
	await $"/root/TransitionScreen".on_transition_finished
	get_tree().change_scene_to_packed(preload("res://Scenes/Fases/Fase6/fase_6.tscn"))


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
