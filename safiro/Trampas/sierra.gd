extends Node2D
var dmg := 1
@onready var sprite = $CierraActual/Sprite2D
@onready var path = $Path2D/PathFollow2D
@onready var sierra = $CierraActual
@export var platformspeed : float = .2
var isRight = true
func _process(delta):
	sprite.rotate(deg_to_rad(450*delta))
	sierra.global_position = path.global_position
	if isRight:
		path.progress_ratio += platformspeed * delta
	else:
		path.progress_ratio -= platformspeed * delta
	if path.progress_ratio>= .95:
		isRight = false
	elif path.progress_ratio<= .05:
		isRight = true
