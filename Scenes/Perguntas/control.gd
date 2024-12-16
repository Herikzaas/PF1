extends Control

var i = randi_range(1,35)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$"/root/Global".certa = false
	while i in $"/root/Global".perg_usadas :
		i = randi_range(1,35)
	$"/root/Global".perg_usadas.append(i)
	i = str(i)
	i = "p"+i
	print(i)
	$MarginContainer/HBoxContainer/MarginContainer/Holder_Rosa/PerguntaRosa.text = str(StaticData.itemData['perguntas']["fase1"][i]["enunciado"])
	$MarginContainer/HBoxContainer/MarginContainer/Holder_Rosa/HBoxContainer3/resp1.text = str(StaticData.itemData['perguntas']["fase1"][i]["r1"])
	$MarginContainer/HBoxContainer/MarginContainer/Holder_Rosa/HBoxContainer3/resp2.text = str(StaticData.itemData['perguntas']["fase1"][i]["r2"])
	$MarginContainer/HBoxContainer/MarginContainer/Holder_Rosa/HBoxContainer4/resp3.text = str(StaticData.itemData['perguntas']["fase1"][i]["r3"])
	$MarginContainer/HBoxContainer/MarginContainer/Holder_Rosa/HBoxContainer4/resp4.text = str(StaticData.itemData['perguntas']["fase1"][i]["r4"])


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if $"/root/Global".perg_visible == true :
		if Input.is_action_just_pressed("Btn_Resp1") and $MarginContainer/HBoxContainer/MarginContainer/Holder_Rosa.visible == true :
			confere($MarginContainer/HBoxContainer/MarginContainer/Holder_Rosa/HBoxContainer3/resp1,i)
		if Input.is_action_just_pressed("Btn_Resp2") and $MarginContainer/HBoxContainer/MarginContainer/Holder_Rosa.visible == true :
			confere($MarginContainer/HBoxContainer/MarginContainer/Holder_Rosa/HBoxContainer3/resp2,i)
		if Input.is_action_just_pressed("Btn_Resp3") and $MarginContainer/HBoxContainer/MarginContainer/Holder_Rosa.visible == true :
			confere($MarginContainer/HBoxContainer/MarginContainer/Holder_Rosa/HBoxContainer4/resp3,i)
		if Input.is_action_just_pressed("Btn_Resp4") and $MarginContainer/HBoxContainer/MarginContainer/Holder_Rosa.visible == true :
			confere($MarginContainer/HBoxContainer/MarginContainer/Holder_Rosa/HBoxContainer4/resp4,i)
	
func confere(btn,i):
	if btn.text == (StaticData.itemData['perguntas']["fase1"][i]["correta"]):
			btn.modulate = "00913f"
			$"/root/Global".certa = true
			$"/root/Global".perg_visible = false
			$"/root/Global".acertos += 1
			await get_tree().create_timer(0.5).timeout
			queue_free()
	if btn.text != (StaticData.itemData['perguntas']["fase1"][i]["correta"]) and $"/root/Global".certa == false:
		$"/root/Global".vidas -= 1
		print($"/root/Global".vidas,"vidas")
