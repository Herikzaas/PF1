extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$"/root/Global".fase = 5
	$"/root/Global".acertos = 0
	$"/root/Global".num_questoes = 3
	$"/root/Global".liberar_paredeR = ""
	$"/root/Global".liberar_paredeA = ""
	$"/root/Global".fase_pre = preload("res://Scenes/Fases/Fase6/fase_6.tscn")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
