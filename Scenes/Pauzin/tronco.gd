extends StaticBody2D

#botar gravidade dps
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	liberar(delta)
	

func liberar(delta) -> void :
	if $"/root/Global".liberar_parede == "ParedeAzulF1" :
		if self.name == "ParedeAzul" :
			if $"/root/Global".certa == true :
				move_local_y(delta*15)
				await get_tree().create_timer(12).timeout
				self.visible = false
	
	if $"/root/Global".liberar_parede == "ParedeRosaF1" :
		if self.name == "ParedeRosa" :
			if $"/root/Global".certa == true :
				move_local_y(delta*15)
				await get_tree().create_timer(12).timeout
				self.visible = false
