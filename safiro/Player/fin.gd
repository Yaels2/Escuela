extends Area2D

var siguientenivel := "res://WORLDS/world2.tscn"


func _on_body_entered(body):
	if body is Zafiro:
		call_deferred("cambiarescena")


func cambiarescena():
	get_tree().change_scene_to_file(siguientenivel)
