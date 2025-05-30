extends Control

func _ready():
	# Conecta os botões às funções
	$VBoxContainer/entrar.pressed.connect(_on_jogar_pressed)
	$VBoxContainer2/creditos.pressed.connect(_on_sair_pressed)
func _on_jogar_pressed():
	get_tree().change_scene_to_file("res://cenas/cena_principal.tscn")

func _on_sair_pressed():
	get_tree().change_scene_to_file("res://cenas/creditos.tscn")
