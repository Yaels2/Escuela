extends Personajes
var player
var canChangeDireccion = true
var direccion = -1 :
	set(value):
		if value != direccion:
			darseVuelta()
		direccion = value


@onready var raySuelo : RayCast2D = $Raycast/RayCastSuelo
@onready var rayMuro  = $Raycast/RayCastMuro
@onready var ray := $Raycast
@onready var rayDector : RayCast2D = $RayCastDetector
@onready var cerdAni = $AnimationPlayer
@onready var timer = $saltoen
enum estados {patrullar,idle,morir}
var estadoactual = estados.idle:
	set(value):
		estadoactual = value
		match value:
			estados.patrullar:
				cerdAni.play("runangry")
			estados.idle:
				cerdAni.play("Idle")

func _ready():
	cerdAni.play("walk")
	speed = 50


func _physics_process(_delta):
	velocity.x = direccion*speed
	if !is_on_floor():
		velocity.y += 9.81
	move_and_slide()

func _process(_delta):
	if player == null and rayDector.is_colliding():
		var coision =rayDector.get_collider()
		if coision.is_in_group("Player"):
			player = coision
			estadoactual = estados.patrullar  
	if estadoactual == estados.patrullar and player != null:
		cerdAni.play("runangry")
		var direccionPlayer = global_position.direction_to(player.global_position)
		if direccionPlayer.x < 0:
			direccion = -1
		elif direccionPlayer.x > 0:
			direccion = 1
	
	if estadoactual == estados.idle:
		if canChangeDireccion and (rayMuro.is_colliding() or !raySuelo.is_colliding()):
			direccion *= -1
	$Sprite2D.flip_h = true if direccion == 1 else false 

func takeDMG(damage):
	life -= damage
	if life <= 0:
		estadoactual = estados.morir
		cerdAni.play("hurt")
		timer.start()
		$DMGplayer/CollisionShape2D.set_deferred("disabled",true)
		$CollisionShape2D.set_deferred("disabled",true)
		await(cerdAni.animation_finished)
		queue_free()


func _on_ray_timer_timeout():
	canChangeDireccion = true

func darseVuelta():
	canChangeDireccion = false
	$Raycast/RayTimer.start()
	ray.scale.x *= -1
	rayDector.scale.x *= -1

func _on_dm_gplayer_muero_un_u():
	estadoactual = estados.idle
	direccion *= -1
	cerdAni.play("walk")
