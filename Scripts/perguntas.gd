extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$HolderAzul/textazul.text = str(StaticData.itemData['perguntas']["fase1"]["p1"]["enunciado"])
	$HolderAzul/resp1.text = str(StaticData.itemData['perguntas']["fase1"]["p1"]["r1"])
	$HolderAzul/resp2.text = str(StaticData.itemData['perguntas']["fase1"]["p1"]["r1"])
	$HolderAzul/resp3.text = str(StaticData.itemData['perguntas']["fase1"]["p1"]["r1"])
	$HolderAzul/resp4.text = str(StaticData.itemData['perguntas']["fase1"]["p1"]["r1"])
	pass


func _process(delta: float) -> void:
	if Input.is_action_just_pressed("Resp1Azul") and $HolderAzul.visible == true:
		if $HolderAzul/resp1.text == str(StaticData.itemData['perguntas']["fase1"]["p1"]["correta"]):
			$HolderAzul/resp1.self_modulate = Color(1,1,1)
			$HolderAzul.visible = false
