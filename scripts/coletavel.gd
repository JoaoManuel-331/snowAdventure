extends Area2D

func _physics_process(delta: float) -> void:
	pass

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		Globais.GlobalChave = true
		Globais.GlobalColetaveis += 1
		#body.coletarColetaveis("normal")
		queue_free()
	pass # Replace with function body.
