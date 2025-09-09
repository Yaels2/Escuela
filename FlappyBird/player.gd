extends RigidBody2D
@onready var sprite = $pajaro
@onready var timer = $Timer
var speed := 400
var score := 0
var puntuador := 0

func _ready():
	puntuador = Savew.game_data.puntuador 
	$"../scoreLabel3".text = str(puntuador)
	timer.wait_time = .4
	timer.one_shot = false
	timer.connect("timeout", Callable(self,"_on_timer_timeout"))  # Conexión sin paréntesis
	timer.start()

func _integrate_forces(state):
	if Input.is_action_just_pressed("ui_accept") or Input.is_action_just_pressed("click"):
		timer.start()
		animate_rotation(deg_to_rad(-50),.4)
		$"../plapping".play()
		$"../plapping".play()
		linear_velocity = Vector2.ZERO
		apply_central_impulse(Vector2(0,-speed))
		$pajaro.play("flap")

func animate_rotation(target_rotation: float, duration: float):
	var tween = create_tween()
	tween.tween_property(sprite, "rotation", target_rotation, duration)


func _on_timer_timeout():
	# Si no hubo clic, rota hacia 45° 
	animate_rotation(deg_to_rad(125), 1)

func morir():
	animate_rotation(deg_to_rad(70),2)
	$"../die".play()
	$"../Scoreboard".show()
	$"../scoreLabel2".show()
	$"../scoreLabel3".show()
	$"../scoreLabel".hide()

func subirScore():
	$"../pontsxd".play()
	score += 1
	$"../scoreLabel".text = str(score)
	$"../scoreLabel2".text = str(score)
	if score > puntuador:
		puntuador = score
		Savew.game_data.puntuador = puntuador
		Savew.saveData()
		$"../scoreLabel3".text = str(puntuador)

func _on_detecta_body_entered(body):
	if body.is_in_group("obstaculo"):
		morir()
