extends Area2D

var perguntas = preload("res://Scenes/Perguntas/margem_perguntas.tscn")

func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("player_azul") and $"/root/Global".perg_visible == false :
		if $"/root/Global".perg_visible == false :
			queue_free()
			var perg = perguntas.instantiate()
			get_tree().get_root().add_child(perg)
			$"/root/Global".perg_visible = true
			fases()
			
func fases() -> void :
	if $"/root/Global".fase == 1 :
		$"/root/Global".liberar_parede = "ParedeAzulF1"
