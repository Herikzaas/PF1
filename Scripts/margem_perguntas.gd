extends MarginContainer

var x
var y
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	x = (get_viewport_rect().size.x - 612) / 2
	y = (get_viewport_rect().size.y - 200) / 2
	global_position.x = 0
	global_position.y = 0
	
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
