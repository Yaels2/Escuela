extends PLayerState

func state_entered_state(msg := {}):
	anim_player.play("hurt")
	player.DMGColision.set_deferred("disabled",true)
	$"../../hit".play()
	player.velocity.y = -player.jump
	player.move_and_slide()


func state_physics_process(delta):
	var direccion = Input.get_axis("izq","d")
	player.sr.flip_h = direccion < 0 if direccion != 0 else player.sr.flip_h
	player.velocity.x = direccion * player.speed 
	player.velocity.y +=  player.gravedad 
	player.move_and_slide()



func _on_animation_player_animation_finished(anim_name):
	if player.DMGColision.disabled:
		state_machine.transtion_to("Idle") 
		player.DMGColision.set_deferred("disabled",false)
