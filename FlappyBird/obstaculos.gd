extends Node2D

var speed := 150

func _ready():
	randomize()
	position.y = randf_range(104.0,400.0)

func _process(delta):
	position.x -= speed * delta
	if position.x <= -235:
		call_deferred("queue_free")


func _on_tuberia_body_entered(body):
	if body.is_in_group("Player"):
		body.morir()


func _on_tuberia_2_body_entered(body):
	if body.is_in_group("Player"):
		body.morir()

func _on_score_body_entered(body):
	if body.is_in_group("Player"):
		body.subirScore()
