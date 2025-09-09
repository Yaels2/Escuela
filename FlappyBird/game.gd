extends Node
var Obstaculo = preload("res://obstaculos.tscn")
@onready var timeer = $CrearObstaculosTimer
func _on_crear_obstaculos_timer_timeout():
	var obstaculo = Obstaculo.instantiate()
	obstaculo.position.x  = 270
	add_child(obstaculo)



func _on_area_2d_body_entered(body):
	if body.is_in_group("Player"):
		timeer.stop()
		body.morir()
