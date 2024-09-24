extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	print(StaticData.itemData["perguntas"]["apple"]["description"])
	
	for i in StaticData.itemData :
		for question in i :
			print(question)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
