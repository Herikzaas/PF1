extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$"/root/Global".musica_fase = preload("res://sounds/musicaF2.mp3")
	$"/root/AudioPlayer".play_music_level()
	$"/root/Global".fase = 10
	$"/root/Global".acertos = 12
	$"/root/Global".num_questoes = 12
	$"/root/Global".liberar_paredeR = ""
	$"/root/Global".liberar_paredeA = ""
	$"/root/Global".liberar_platA = ""
	$"/root/Global".liberar_platR = ""
	$"/root/Global".tipo_fase = "tipo2"
	$"/root/Global".reinicia_fase = preload("res://Scenes/Cutscenes/ultima_cut.tscn")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
