extends StaticBody2D

#botar gravidade dps
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if self.name == 'tronco_parede2' :
		move_local_y(delta * 5)
	if self.name == 'tronco_parede1' :
		move_local_y(delta * -5)
