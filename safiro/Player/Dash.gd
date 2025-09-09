extends PLayerState
var dashSpeed = 400
var direcciondash = 1
func state_entered_state(msg := {}):
	player.canDash = false
	player.velocity.y = Input.get_axis("w","s") * dashSpeed
	player.velocity.x = Input.get_axis("izq","d") * dashSpeed
	#if $"../../Sprite2D".flip_h:
		#direcciondash = -1
	#else:
		#direcciondash = 1
	$TimerDash.start()
	

func state_physics_process(delta):
	#player.velocity.x = direcciondash * dashSpeed
	player.move_and_slide() 


func _on_timer_dash_timeout():
	state_machine.transtion_to("Idle")
