class_name PLayerState
extends State

var player : Zafiro

func _ready():
	await (owner.ready)
	player = owner as Zafiro
	assert(player != null)
