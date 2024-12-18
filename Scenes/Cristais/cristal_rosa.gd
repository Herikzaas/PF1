extends Area2D

var perguntas = preload("res://Scenes/Perguntas/margem_perguntas.tscn")

func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("player_rosa") and $"/root/Global".perg_visible == false:
			queue_free()
			var perg = perguntas.instantiate()
			get_tree().get_root().add_child(perg)
			$"/root/Global".perg_visible = true
			fases()
			
func fases() -> void :
	if $"/root/Global".fase <= 10:
		if self.name == "cristal_rosaParede" : 
			$"/root/Global".liberar_paredeR = "ParedeRosaF1"
		if self.name == "cristal_rosaPlataforma" :
			$"/root/Global".liberar_platR = "PlataformaRosaF2"
		if self.name == "cristal_rosaInimigo" :
			$"/root/Global".liberar_paredeR = "ParedeRosaF3"
		if self.name == "cristal_rosaPlataforma2" :
			$"/root/Global".liberar_platR = "PlataformaRosaF7"

			
