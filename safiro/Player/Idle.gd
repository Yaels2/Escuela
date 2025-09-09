extends PLayerState

func state_entered_state(msg := {}):
	player.velocity = Vector2.ZERO
	anim_player.play("idle")
func state_process(delta):
	var direccion = Input.get_axis("izq","d")
	player.move_and_slide()
	if direccion != 0:
		state_machine.transtion_to("Moving") 
	elif !player.is_on_floor():
		state_machine.transtion_to("enAire") 
	elif Input.is_action_just_pressed("w"):
		state_machine.transtion_to("enAire",{salto = true}) 
	elif Input.is_action_just_pressed("ui_left") and player.canDash:
		state_machine.transtion_to("Dash") 
