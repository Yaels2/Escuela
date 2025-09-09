extends PLayerState
var hasJump = false
var isFalling = false
func state_entered_state(msg := {}):
	if msg.has("salto"):
		hasJump=true
		print("aqui2",player.saltos)
		player.saltos -= 1
		print("aqui3",player.saltos)
		$"../../Jump".play()
		anim_player.play("Jump")
		player.velocity.y = -player.jump
		if player.saltos > 0:
				anim_player.play("dobleUnU")
		else:
			anim_player.play("fall")
	
	if isFalling:
			$CoyoteTimer.start()
func state_physics_process(delta):
	
	var direccion = Input.get_axis("izq","d")
	player.sr.flip_h = direccion < 0 if direccion != 0 else player.sr.flip_h
	
	player.velocity.x = direccion * player.speed
	
	player.velocity.y +=  player.gravedad 
	
	if player.velocity.y > 0:
		isFalling = true
	else:
		isFalling = false
	
	player.move_and_slide() 
	
	if player.is_on_wall():
		state_machine.transtion_to("wallSlide") 
	
	if player.is_on_floor():
		state_machine.transtion_to("Idle") 
	
	
	if !$BufferJumpTimer.is_stopped() and player.is_on_floor():
		$BufferJumpTimer.stop()
		player.ReiniciaSalto()
		state_machine.transtion_to("enAire",{salto = true}) 
	
	elif hasJump and Input.is_action_just_pressed("w") and player.saltos > 0:
		state_machine.transtion_to("enAire",{salto = true}) 
	elif !$CoyoteTimer.is_stopped() and Input.is_action_just_pressed("w"):
		state_machine.transtion_to("enAire",{salto = true}) 
	elif Input.is_action_just_pressed("w"): 
		$BufferJumpTimer.start()
	elif Input.is_action_just_pressed("ui_left") and player.canDash:
		state_machine.transtion_to("Dash") 
