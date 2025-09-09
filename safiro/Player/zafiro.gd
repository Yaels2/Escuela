extends CharacterBody2D
class_name Zafiro
var speed := 200
var direccion := 0.0
var jump := 250
var saltos := 2
var damage :=  1
var canDash := false
const gravedad := 9.81
signal cambiovida
@export var vidaMax := 10
	#set(val):
		#vida = val
		#$PlayerGUI/HpProgressBar.value = vida
@onready var vida : int = vidaMax
@onready var stateMachine = $StateMachine
@onready var animaciones = $AnimationPlayer
@onready var sr = $Sprite2D
@onready var frutasLabel := $PlayerGUI/HBoxContainer/FrutasLabel2/FrutasLabel
@onready var dmgflecha := $RaycastDMG
@onready var DMGColision := $RecibirDano/CollisionShape2D
#enum  estados {NORMAL,HURT,JUMP}
#var estadoactual = estados.NORMAL
func _ready():
	Global.player = self 
	#$PlayerGUI/HpProgressBar.value = vida

func _process(delta):
	$LabelState.text = $StateMachine.state.name
	if is_on_floor() and saltos != 2 and stateMachine.state.name != "enAire":
		ReiniciaSalto()
		for ray in dmgflecha.get_children():
			if ray.is_colliding():
				var colisiones = ray.get_collider()
				if colisiones is Node:
					if colisiones.is_in_group("Enemigos"):
						if colisiones.has_method("takeDMG"):
							colisiones.takeDMG(damage)
							saltos +=1
							stateMachine.transtion_to("enAire",{salto = true}) 
							emit_signal("cambiovida")
	if is_on_floor() or is_on_wall():
		canDash = true

func ReiniciaSalto():
	saltos= 2
#func _physics_process(delta):
	#if estadoactual == estados.NORMAL:
		#procesarnormal(delta)
#
#
#func procesarnormal(_delta):
	#direccion = Input.get_axis("izq","d")
	#velocity.x =direccion * speed
	#velocity.y += gravedad
	#
	#if direccion !=0:
		#animaciones.play("walk")
	#else:
		#animaciones.play("idle")
	#sr.flip_h = direccion < 0 if direccion != 0 else sr.flip_h
	#if Input.is_action_just_pressed("w") and is_on_floor():
		#$Jump.play()
		#sr.frame = 23
		#velocity.y = jump
	#if is_on_floor():
		#estadoactual = estados.NORMAL 
	#move_and_slide()
#



func takeDamge(dmg):
	#$hit.play()
	vida -= dmg
	stateMachine.transtion_to("takeDamage")
	if vida <= 0:
		call_deferred("morir")


func morir():
	get_tree().reload_current_scene()
func actualizainterfazfrutas():
	frutasLabel.text = str(Global.fruta)
