extends Node

const savefile = "C:/Users/yaels/Downloads/proyectos/FlappyBird/SAVEFILE.save"

var game_data = {
	"puntuador":0
}

func _ready():
	loaddata();

func loaddata():
	var file = FileAccess.open(savefile,FileAccess.READ)
	if file == null:
		saveData()
	else:
		game_data = file.get_var()
		file = null

func saveData():
	var file = FileAccess.open(savefile,FileAccess.WRITE)
	file.store_var(game_data)
	file = null
