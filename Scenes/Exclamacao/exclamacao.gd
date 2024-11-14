extends Area2D

func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group('players'):
		pass
func _on_body_exited(body: Node2D) -> void:
	if body.is_in_group('players'):
		if self.name == "Andar":
			print('saiu')
