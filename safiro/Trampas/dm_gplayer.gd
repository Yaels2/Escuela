extends Area2D
@export var daño := 1
signal mueroUnU
func _on_area_entered(area):
	if area.is_in_group("AreaPlayer"):
		area.owner.takeDamge(daño) # Replace with function body.
		emit_signal("mueroUnU")
