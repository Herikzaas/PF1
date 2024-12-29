extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$"/root/Global".musica_fase = preload("res://sounds/musicaF1.mp3")
	$"/root/AudioPlayer".play_music_level()
	$"/root/Global".fase = 1 
	$"/root/Global".acertos = 0
	$"/root/Global".num_questoes = 2
	$"/root/Global".fase_pre = preload("res://Scenes/Fases/Fase2/Fase2.tscn")
	$"/root/Global".tipo_fase = "tipo1"
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
