extends Control

func _ready():
	# Conecta os botões às funções
	$VBoxContainer/voltar.pressed.connect(_on_jogar_pressed)
func _on_jogar_pressed():
	get_tree().change_scene_to_file("res://cenas/menu.tscn")
