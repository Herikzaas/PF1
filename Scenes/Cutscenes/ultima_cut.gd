extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Sprite2D.texture = preload("res://assets/Cutscenes/tela final parabens.png")
	await get_tree().create_timer(6).timeout
	$"/root/TransitionScreen".transition()
	await $"/root/TransitionScreen".on_transition_finished
	$Sprite2D.texture = preload("res://assets/Cutscenes/creditos.png")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
