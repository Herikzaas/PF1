extends Node

@onready var players := {
	"1": {
		viewport = $"HBoxContainer/SubViewportContainer/SubViewport",
		camera = $"HBoxContainer/SubViewportContainer/SubViewport/Camera2D",
		player = $HBoxContainer/SubViewportContainer/SubViewport/Principal/PlayerAzul,
	},
	"2": {
		viewport = $"HBoxContainer/SubViewportContainer2/SubViewport",
		camera = $"HBoxContainer/SubViewportContainer2/SubViewport/Camera2D",
		player = $HBoxContainer/SubViewportContainer/SubViewport/Principal/PlayerRosa,
	}
}

func _ready():
	players["2"].viewport.world_2d = players["1"].viewport.world_2d
	for node in players.values():
		var remote_transform := RemoteTransform2D.new()
		remote_transform.remote_path = node.camera.get_path()
		node.player.add_child(remote_transform)

func _process(delta):
	if $"/root/Global".TextoF1 == 1 :
		$"TextPlayerAzul".text = 'deu certo bicho'
	else :
		_limpatxt()

func _limpatxt():
	await get_tree().create_timer(0.4).timeout 
	$"TextPlayerAzul".text = ''
		
