extends Control

var perguntas = preload("res://Scenes/Perguntas/margem_perguntas.tscn")
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_andar_body_entered(body: Node2D) -> void:
	if body.is_in_group('players'):
		var perg = perguntas.instantiate()
		get_tree().get_root().add_child(perg)
