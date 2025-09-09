extends PLayerState

func state_entered_state(msg := {}):
	anim_player.play("walk")
func state_physics_process(delta):
	var direccion = Input.get_axis("izq","d")
	player.sr.flip_h = direccion < 0 if direccion != 0 else player.sr.flip_h
	player.velocity.x = direccion * player.speed 
	player.move_and_slide()
	if direccion == 0 and player.is_on_floor():
		state_machine.transtion_to("Idle")
	elif !player.is_on_floor():
		state_machine.transtion_to("enAire")
	elif Input.is_action_just_pressed("w"):
		state_machine.transtion_to("enAire",{salto = true}) 
	elif Input.is_action_just_pressed("ui_left") and player.canDash:
		state_machine.transtion_to("Dash") 
