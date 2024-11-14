extends Area2D

var next_scene = preload("res://Scenes/Fases/mundo_colorido.tscn")
var n = 0
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	




func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group('players'):
		body.morto = true
		n += 1
		if n == 2 :
			await get_tree().create_timer(2).timeout
			get_tree().change_scene_to_packed(next_scene)
