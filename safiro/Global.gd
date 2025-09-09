extends Node
var fruta := 0 :
	set(val):
		fruta = val
		if player != null:
			player.actualizainterfazfrutas()
			$FrutaSonido.play()
	get:
		return fruta

var player   
