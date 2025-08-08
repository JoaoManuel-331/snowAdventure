extends CharacterBody2D

func _process(delta: float) -> void:
	if Globais.GlobalChave == true:
		queue_free()
