extends StaticBody2D

var velocidade = 15
#botar gravidade dps
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	velocidade = 15


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	liberar(delta)
	

func liberar(delta) -> void :
	velocidade = 15
	if $"/root/Global".liberar_paredeA == "ParedeAzulF1" :
		if self.name == "ParedeAzul" :
			if $"/root/Global".certa == true :
				move_local_y(delta*15)
				await get_tree().create_timer(12).timeout
				self.visible = false
		if self.name == "ParedeAzulSobe":
			if $"/root/Global".certa == true :
				move_local_y(delta*-15)
				await get_tree().create_timer(12).timeout
				self.visible = false
	if $"/root/Global".liberar_paredeR == "ParedeRosaF1" :
		if self.name == "ParedeRosa" :
			if $"/root/Global".certa == true :
				move_local_y(delta*15)
				await get_tree().create_timer(12).timeout
				self.visible = false
	if $"/root/Global".liberar_paredeR == "ParedeRosaF3" :
		if self.name == "ParedeInimigoR" or self.name == "ParedeInimigoR2":
			if $"/root/Global".certa == true :
				if self.position.y >= 410 :
					move_local_y(delta * -velocidade)
				else :
					velocidade = 0
	if $"/root/Global".liberar_paredeA == "ParedeAzulT1" :
		if self.name == "Parede_AzulTranca" :
			if $"/root/Global".certa == true :
				if self.position.y <= 122 :
					move_local_y(delta * -velocidade)
