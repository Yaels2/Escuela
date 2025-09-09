extends PLayerState

func state_entered_state(msg := {}):
	player.velocity.y = 0
	anim_player.play("wallSlide")
	
func state_physics_process(delta):
	player.velocity.y += player.gravedad*.05
	var direccion = Input.get_axis("izq","d")
	player.velocity.x = direccion * player.speed
	
	player.move_and_slide()
	
	if player.is_on_floor():
		state_machine.transtion_to("Idle")
	elif !player.is_on_wall():
		state_machine.transtion_to("enAire")
	elif Input.is_action_just_pressed("w"):
		state_machine.transtion_to("WallJump")
