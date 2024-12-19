extends CanvasLayer


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$"/root/Global".fase_pre = preload("res://Scenes/Fases/Fase1/Fase1.tscn")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_button_pressed() -> void:
		$"/root/TransitionScreen".transition()
		await $"/root/TransitionScreen".on_transition_finished
		get_tree().change_scene_to_packed($"/root/Global".fase_pre)
