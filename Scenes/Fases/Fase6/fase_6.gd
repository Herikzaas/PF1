extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$"/root/Global".fase = 6
	$"/root/Global".acertos = 0
	$"/root/Global".num_questoes = 6
	$"/root/Global".liberar_paredeR = ""
	$"/root/Global".liberar_paredeA = ""
	$"/root/Global".liberar_platA = ""
	$"/root/Global".liberar_platR = ""
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
