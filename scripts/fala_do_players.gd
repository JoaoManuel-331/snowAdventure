extends CharacterBody2D

func _ready() -> void:
	$a.visible = false
	$ColorRect.visible = false

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		$a.visible = true
		$ColorRect.visible = true

func _on_area_2d_body_exited(body: Node2D) -> void:
	if body.name == "Player":
		$a.visible = false
		$ColorRect.visible = false
