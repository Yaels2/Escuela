@tool
extends Path2D
@export var platformspeed : float = .2
var isRight = true
func _process(delta):
	$Plataformcara.global_position = $PathFollow2D.global_position
	if isRight:
		$PathFollow2D.progress_ratio += platformspeed * delta
	else:
		$PathFollow2D.progress_ratio -= platformspeed * delta
	if $PathFollow2D.progress_ratio>= .95:
		isRight = false
	elif $PathFollow2D.progress_ratio<= .05:
		isRight = true
