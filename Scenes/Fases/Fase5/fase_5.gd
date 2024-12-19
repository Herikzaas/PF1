extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$"/root/AudioPlayer".play_music_level()
	$"/root/Global".fase = 5
	$"/root/Global".acertos = 0
	$"/root/Global".num_questoes = 3
	$"/root/Global".liberar_paredeR = ""
	$"/root/Global".liberar_paredeA = ""
	$"/root/Global".liberar_platA = ""
	$"/root/Global".liberar_platR = ""
	$"/root/Global".fase_pre = preload("res://Scenes/Cutscenes/cena_espinhos.tscn")
	$"/root/Global".tipo_fase = "tipo1"


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
