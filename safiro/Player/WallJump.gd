extends PLayerState
var canChangeState = false
var direccion : float
var wallJumpVertical = 350
var wallJumpHorizontal= 180

func state_entered_state(msg := {}):
	canChangeState = false
	var direccion = Input.get_axis("izq","d")
	player.velocity = Vector2.ZERO

func state_physics_process(delta):
	player.velocity.y = lerpf(player.velocity.y,-wallJumpVertical,.9)
	player.velocity.x = lerpf(player.velocity.x,-direccion * wallJumpHorizontal,.9)
	
	if player.velocity.y <= -wallJumpVertical or player.is_on_ceiling():
		canChangeState = true
		print("cambio")
	player.move_and_slide()
	
	if canChangeState and !player.is_on_floor():
		state_machine.transtion_to("enAire")
	elif Input.is_action_just_pressed("ui_left") and player.canDash:
		state_machine.transtion_to("Dash") 
