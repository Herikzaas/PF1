extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$"/root/Global".fase = 4
	$"/root/Global".acertos = 0
	$"/root/Global".num_questoes = 2
	$"/root/Global".liberar_paredeR = ""
	$"/root/Global".liberar_paredeA = ""
	$"/root/Global".liberar_platA = ""
	$"/root/Global".liberar_platR = ""
	$"/root/Global".fase_pre = preload("res://Scenes/Fases/Fase5/fase_5.tscn")
	$"/root/Global".reinicia_fase = preload("res://Scenes/Fases/Fase4/fase_4.tscn")
	$"/root/Global".tipo_fase = "tipo1"
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
