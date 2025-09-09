extends TextureProgressBar

@export var safiro : Zafiro

func _ready():
	safiro.connect("cambiovida", Callable(self, "_on_cambiovida"))

func _on_cambiovida():
	update()

func _process(delta):
	update()

func update():
	value = safiro.vida * 100 / safiro.vidaMax 
