extends Area2D


func _on_body_entered(body):
	if body is Zafiro:
		body.takeDamge(999999999) 
