extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$"/root/Global".fase = 2
	$"/root/Global".acertos = 0
	$"/root/Global".num_questoes = 2
	$"/root/Global".liberar_paredeR = ""
	$"/root/Global".liberar_paredeA = ""
	$"/root/Global".fase_pre = preload("res://Scenes/Fases/Fase3/fase_3.tscn")
 
func _process(delta: float) -> void:
	pass
