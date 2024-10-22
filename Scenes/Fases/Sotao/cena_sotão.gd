extends Control

var perguntas = preload("res://Scenes/Perguntas/margem_perguntas.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_bau_collision_body_entered(body: Node2D) -> void:
	var hold = perguntas.instantiate()
	get_tree().get_root().add_child(hold)
	
