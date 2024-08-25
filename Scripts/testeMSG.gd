extends Area2D


func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_body_entered(body):
	if body.is_in_group('Rosa'):
		$"/root/Global".TextoF1 = 1
	if body.is_in_group('Azul'):
		$"/root/Global".TextoF1 = 2
	
func _on_body_exited(body):
	$"/root/Global".TextoF1 = 0
	
