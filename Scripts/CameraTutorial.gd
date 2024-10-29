extends Camera2D

@onready var p1 = get_parent().get_node("PlayerAzul")
@onready var p2 = get_parent().get_node("PlayerRosa")
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

func _process(delta: float) -> void:
	self.position = (p1.position + p2.position)*0.5

	#$"../MargemPerguntas".position.x = self.position.x - 20
