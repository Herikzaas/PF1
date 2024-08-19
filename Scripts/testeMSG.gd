extends Area2D


func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_body_entered(body):
	$"/root/Global".TextoF1 = 1


func _on_body_exited(body):
	$"/root/Global".TextoF1 = 0
	
