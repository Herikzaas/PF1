extends Button

var fase = preload("res://Scenes/Fases/Fase1/Fase1.tscn")
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	global_position.x = 773
	global_position.y = 17


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_pressed() -> void:
	get_tree().change_scene_to_packed(fase)
