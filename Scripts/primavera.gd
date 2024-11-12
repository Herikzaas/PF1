extends Node2D

var perguntas = preload("res://Scenes/Perguntas/margem_perguntas.tscn")
@onready var p1 = get_node("PlayerAzul")
@onready var p2 = get_node("PlayerRosa")
var controle = false
var perg 
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	controle = false
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if controle :
		perg.position.x = $Camera2D.position.x
		perg.position.y = (get_viewport_rect().size.y) * 0.6
	

func _on_andar_body_entered(body: Node2D) -> void:
	if body.is_in_group('players'):
		if perg.visible == true : 
			controle = true
			perg = perguntas.instantiate()
			self.add_child(perg)
		
		
