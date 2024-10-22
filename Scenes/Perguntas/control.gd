extends Control

var i = randi_range(1,33)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
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
	if Input.is_action_just_pressed("Btn_Resp1") and $MarginContainer/HBoxContainer/MarginContainer/Holder_Rosa.visible == true :
		confere($MarginContainer/HBoxContainer/MarginContainer/Holder_Rosa/HBoxContainer3/resp1,i)
	if Input.is_action_just_pressed("Btn_Resp2") and $MarginContainer/HBoxContainer/MarginContainer/Holder_Rosa.visible == true :
		confere($MarginContainer/HBoxContainer/MarginContainer/Holder_Rosa/HBoxContainer3/resp2,i)
	if Input.is_action_just_pressed("Btn_Resp3") and $MarginContainer/HBoxContainer/MarginContainer/Holder_Rosa.visible == true :
		confere($MarginContainer/HBoxContainer/MarginContainer/Holder_Rosa/HBoxContainer4/resp3,i)
	if Input.is_action_just_pressed("Btn_Resp4") and $MarginContainer/HBoxContainer/MarginContainer/Holder_Rosa.visible == true :
		confere($MarginContainer/HBoxContainer/MarginContainer/Holder_Rosa/HBoxContainer4/resp4,i)
	
	if $"/root/Global".p_visi == true :
		$MarginContainer/HBoxContainer/MarginContainer/Holder_Rosa.visible = true
	else :
		$MarginContainer/HBoxContainer/MarginContainer/Holder_Rosa.visible = false
func confere(btn,i):
	if btn.text == (StaticData.itemData['perguntas']["fase1"][i]["correta"]) :
		$"/root/Global".p_visi = false
