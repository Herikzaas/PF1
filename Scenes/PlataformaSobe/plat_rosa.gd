extends Node2D

const WAIT_DURATION := 1.0

@onready var platform := $platform as AnimatableBody2D
@export var move_speed := 3.0
@export var distance := 192
@export var move_horizontal := true

var follow := Vector2.ZERO
var platform_center := 46

var funcionando = false
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	platform.position = platform.position.lerp(follow, 0.5)
	if $"/root/Global".liberar_platR == "PlataformaRosaF2":
		if self.name == "PlataformaRosa" and funcionando == false :
			if $"/root/Global".certa == true :
				move_platform()
				funcionando = true
	if $"/root/Global".liberar_platA == "PlataformaAzulF3" :
		if self.name == "PlataformaAzul" and funcionando == false :
			if $"/root/Global".certa == true :
				move_platform()
				funcionando = true
	if $"/root/Global".liberar_platA == "PlataformaAzulF7" :
		if self.name == "PlataformaAzul2" and funcionando == false :
			if $"/root/Global".certa == true :
				move_platform()
				funcionando = true
	if $"/root/Global".liberar_platR == "PlataformaRosaF7" :
		if self.name == "PlataformaRosa2" and funcionando == false :
			if $"/root/Global".certa == true :
				move_platform()
				funcionando = true
	if $"/root/Global".acertos >= 12 :
		if self.name == "PlataformaFase10" and funcionando == false :
			if $"/root/Global".certa == true :
				move_platform()
				funcionando = true
				
func move_platform():
	var move_direction = Vector2.RIGHT * distance if move_horizontal else Vector2.UP * distance
	var duration = move_direction.length() / float(move_speed * platform_center)
	
	var platform_tween = create_tween().set_loops().set_trans(Tween.TRANS_LINEAR).set_ease(Tween.EASE_IN_OUT)
	platform_tween.tween_property(self, "follow", move_direction, duration).set_delay(WAIT_DURATION)
	platform_tween.tween_property(self, "follow", Vector2.ZERO, duration).set_delay(duration + WAIT_DURATION * 1.5)
	
